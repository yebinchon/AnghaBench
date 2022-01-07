
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int spt; } ;
struct TYPE_3__ {int dma_lo; int dma_md; int dma_hi; } ;


 scalar_t__ ATARIHW_PRESENT (int ) ;
 int DPRINT (char*) ;
 int EXTD_DMA ;
 int FDCCMD_FORCI ;
 int FDCREG_CMD ;
 int FDC_WRITE (int ,int ) ;
 int HZ ;
 int MFPDELAY () ;
 scalar_t__ MultReadInProgress ;
 int PhysTrackBuffer ;
 int SET_IRQ_HANDLER (int *) ;
 TYPE_2__* SUDT ;
 TYPE_1__ dma_wd ;
 int fd_rwsec_done1 (int ) ;
 scalar_t__ jiffies ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int mod_timer (int *,scalar_t__) ;
 int readtrack_timer ;
 int st_dma_ext_dmahi ;
 int udelay (int) ;

__attribute__((used)) static void fd_readtrack_check( unsigned long dummy )
{
 unsigned long flags, addr, addr2;

 local_irq_save(flags);

 if (!MultReadInProgress) {






  local_irq_restore(flags);
  return;
 }



 addr = 0;
 do {
  addr2 = addr;
  addr = dma_wd.dma_lo & 0xff;
  MFPDELAY();
  addr |= (dma_wd.dma_md & 0xff) << 8;
  MFPDELAY();
  if (ATARIHW_PRESENT( EXTD_DMA ))
   addr |= (st_dma_ext_dmahi & 0xffff) << 16;
  else
   addr |= (dma_wd.dma_hi & 0xff) << 16;
  MFPDELAY();
 } while(addr != addr2);

 if (addr >= PhysTrackBuffer + SUDT->spt*512) {



  SET_IRQ_HANDLER( ((void*)0) );
  MultReadInProgress = 0;
  local_irq_restore(flags);
  DPRINT(("fd_readtrack_check(): done\n"));
  FDC_WRITE( FDCREG_CMD, FDCCMD_FORCI );
  udelay(25);




  fd_rwsec_done1(0);
 }
 else {

  local_irq_restore(flags);
  DPRINT(("fd_readtrack_check(): not yet finished\n"));
  mod_timer(&readtrack_timer, jiffies + HZ/5/10);
 }
}
