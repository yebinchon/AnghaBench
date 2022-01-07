
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int stretch; } ;
struct TYPE_3__ {unsigned char dma_lo; unsigned char dma_md; unsigned char dma_hi; int dma_mode_status; int fdc_acces_seccount; } ;


 scalar_t__ ATARIHW_PRESENT (int ) ;
 int BUFFER_SIZE ;
 int DPRINT (char*) ;
 int EXTD_DMA ;
 int FDCCMD_WRTRA ;
 int FDCREG_TRACK ;
 int FDCSELREG_STP ;
 unsigned int FDC_READ (int ) ;
 int FDC_WRITE (int ,unsigned int) ;
 int MFPDELAY () ;
 int MotorOn ;
 unsigned long PhysTrackBuffer ;
 int ReqSide ;
 int ReqTrack ;
 int SET_IRQ_HANDLER (int ) ;
 TYPE_2__* SUDT ;
 int dma_cache_maintenance (unsigned long,int,int) ;
 TYPE_1__ dma_wd ;
 int fd_select_side (int ) ;
 int fd_writetrack_done ;
 int get_head_settle_flag () ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 unsigned short st_dma_ext_dmahi ;
 int start_timeout () ;
 int udelay (int) ;

__attribute__((used)) static void fd_writetrack( void )
{
 unsigned long paddr, flags;
 unsigned int track;

 DPRINT(("fd_writetrack() Tr=%d Si=%d\n", ReqTrack, ReqSide ));

 paddr = PhysTrackBuffer;
 dma_cache_maintenance( paddr, BUFFER_SIZE, 1 );

 fd_select_side( ReqSide );


 if (SUDT->stretch) {
  track = FDC_READ( FDCREG_TRACK);
  MFPDELAY();
  FDC_WRITE(FDCREG_TRACK,track >> SUDT->stretch);
 }
 udelay(40);


 local_irq_save(flags);
 dma_wd.dma_lo = (unsigned char)paddr;
 MFPDELAY();
 paddr >>= 8;
 dma_wd.dma_md = (unsigned char)paddr;
 MFPDELAY();
 paddr >>= 8;
 if (ATARIHW_PRESENT( EXTD_DMA ))
  st_dma_ext_dmahi = (unsigned short)paddr;
 else
  dma_wd.dma_hi = (unsigned char)paddr;
 MFPDELAY();
 local_irq_restore(flags);


 dma_wd.dma_mode_status = 0x190;
 MFPDELAY();
 dma_wd.dma_mode_status = 0x90;
 MFPDELAY();
 dma_wd.dma_mode_status = 0x190;
 MFPDELAY();


 dma_wd.fdc_acces_seccount = BUFFER_SIZE/512;
 udelay(40);


 dma_wd.dma_mode_status = FDCSELREG_STP | 0x100;
 udelay(40);
 SET_IRQ_HANDLER( fd_writetrack_done );
 dma_wd.fdc_acces_seccount = FDCCMD_WRTRA | get_head_settle_flag();

 MotorOn = 1;
 start_timeout();

}
