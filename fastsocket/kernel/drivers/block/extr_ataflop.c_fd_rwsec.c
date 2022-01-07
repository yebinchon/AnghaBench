
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int stretch; int spt; } ;
struct TYPE_3__ {unsigned char dma_lo; unsigned char dma_md; unsigned char dma_hi; int dma_mode_status; int fdc_acces_seccount; } ;


 scalar_t__ ATARIHW_PRESENT (int ) ;
 int DMABuffer ;
 int DPRINT (char*) ;
 int EXTD_DMA ;
 int FDCCMDADD_M ;
 int FDCCMD_RDSEC ;
 int FDCCMD_WRSEC ;
 int FDCREG_SECTOR ;
 int FDCREG_TRACK ;
 unsigned int FDCSELREG_STP ;
 unsigned int FDC_READ (int ) ;
 int FDC_WRITE (int ,unsigned int) ;
 int HZ ;
 int MFPDELAY () ;
 unsigned int MotorOn ;
 int MultReadInProgress ;
 int NeedSeek ;
 unsigned long PhysDMABuffer ;
 unsigned long PhysTrackBuffer ;
 scalar_t__ ReqCmd ;
 int ReqData ;
 int ReqSector ;
 int ReqSide ;
 int SET_IRQ_HANDLER (int ) ;
 TYPE_2__* SUDT ;
 scalar_t__ WRITE ;
 int copy_buffer (int ,int ) ;
 int dma_cache_maintenance (unsigned long,int,int) ;
 TYPE_1__ dma_wd ;
 int fd_rwsec_done ;
 int fd_select_side (int ) ;
 int get_head_settle_flag () ;
 int jiffies ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int mod_timer (int *,int) ;
 scalar_t__ read_track ;
 int readtrack_timer ;
 unsigned short st_dma_ext_dmahi ;
 int start_timeout () ;
 int udelay (int) ;
 unsigned long virt_to_phys (int ) ;

__attribute__((used)) static void fd_rwsec( void )
{
 unsigned long paddr, flags;
 unsigned int rwflag, old_motoron;
 unsigned int track;

 DPRINT(("fd_rwsec(), Sec=%d, Access=%c\n",ReqSector, ReqCmd == WRITE ? 'w' : 'r' ));
 if (ReqCmd == WRITE) {
  if (ATARIHW_PRESENT(EXTD_DMA)) {
   paddr = virt_to_phys(ReqData);
  }
  else {
   copy_buffer( ReqData, DMABuffer );
   paddr = PhysDMABuffer;
  }
  dma_cache_maintenance( paddr, 512, 1 );
  rwflag = 0x100;
 }
 else {
  if (read_track)
   paddr = PhysTrackBuffer;
  else
   paddr = ATARIHW_PRESENT(EXTD_DMA) ?
    virt_to_phys(ReqData) : PhysDMABuffer;
  rwflag = 0;
 }

 fd_select_side( ReqSide );


 FDC_WRITE( FDCREG_SECTOR, read_track ? 1 : ReqSector );
 MFPDELAY();

 if (SUDT->stretch) {
  track = FDC_READ( FDCREG_TRACK);
  MFPDELAY();
  FDC_WRITE( FDCREG_TRACK, track >> SUDT->stretch);
 }
 udelay(25);


 local_irq_save(flags);
 dma_wd.dma_lo = (unsigned char)paddr;
 MFPDELAY();
 paddr >>= 8;
 dma_wd.dma_md = (unsigned char)paddr;
 MFPDELAY();
 paddr >>= 8;
 if (ATARIHW_PRESENT(EXTD_DMA))
  st_dma_ext_dmahi = (unsigned short)paddr;
 else
  dma_wd.dma_hi = (unsigned char)paddr;
 MFPDELAY();
 local_irq_restore(flags);


 dma_wd.dma_mode_status = 0x90 | rwflag;
 MFPDELAY();
 dma_wd.dma_mode_status = 0x90 | (rwflag ^ 0x100);
 MFPDELAY();
 dma_wd.dma_mode_status = 0x90 | rwflag;
 MFPDELAY();


 dma_wd.fdc_acces_seccount = read_track ? SUDT->spt : 1;

 udelay(25);


 dma_wd.dma_mode_status = FDCSELREG_STP | rwflag;
 udelay(25);
 SET_IRQ_HANDLER( fd_rwsec_done );
 dma_wd.fdc_acces_seccount =
   (get_head_settle_flag() |
    (rwflag ? FDCCMD_WRSEC : (FDCCMD_RDSEC | (read_track ? FDCCMDADD_M : 0))));

 old_motoron = MotorOn;
 MotorOn = 1;
 NeedSeek = 1;


 if (read_track) {





  MultReadInProgress = 1;
  mod_timer(&readtrack_timer,

     jiffies + HZ/5 + (old_motoron ? 0 : HZ));
 }
 start_timeout();
}
