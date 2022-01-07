
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CLOCK_INIT_DONE ;
 unsigned int MACIO_EN_DMA ;
 int MACIO_SCSI_CSR_ADDR ;
 int* clk_ctrl ;
 int clk_init () ;
 int clk_slow () ;
 int clk_state ;
 unsigned int ldphys (int ) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

__attribute__((used)) static void tsu_clockstop(void)
{
 unsigned int mcsr;
 unsigned long flags;

 if (!clk_ctrl)
  return;
 if (!(clk_state & CLOCK_INIT_DONE)) {
  local_irq_save(flags);
  clk_init();
  clk_state |= CLOCK_INIT_DONE;
  local_irq_restore(flags);
  return;
 }
 if (!(clk_ctrl[2] & 1))
  return;

 local_irq_save(flags);


 mcsr = ldphys(MACIO_SCSI_CSR_ADDR);
 if ((mcsr&MACIO_EN_DMA) != 0) {
  local_irq_restore(flags);
  return;
 }



 clk_slow();
 local_irq_restore(flags);
}
