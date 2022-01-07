
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int OCP_MOD ;
 int OMAP3430_IO_ST ;
 int OMAP3430_WKUP_ST ;
 int OMAP3_PRM_IRQSTATUS_MPU_OFFSET ;
 int WARN (int,char*,...) ;
 int _prcm_int_handle_wakeup () ;
 int prm_read_mod_reg (int ,int ) ;
 int prm_write_mod_reg (int,int ,int ) ;

__attribute__((used)) static irqreturn_t prcm_interrupt_handler (int irq, void *dev_id)
{
 u32 irqstatus_mpu;
 int c = 0;

 do {
  irqstatus_mpu = prm_read_mod_reg(OCP_MOD,
     OMAP3_PRM_IRQSTATUS_MPU_OFFSET);

  if (irqstatus_mpu & (OMAP3430_WKUP_ST | OMAP3430_IO_ST)) {
   c = _prcm_int_handle_wakeup();





   WARN(c == 0, "prcm: WARNING: PRCM indicated MPU wakeup "
        "but no wakeup sources are marked\n");
  } else {

   WARN(1, "prcm: WARNING: PRCM interrupt received, but "
        "no code to handle it (%08x)\n", irqstatus_mpu);
  }

  prm_write_mod_reg(irqstatus_mpu, OCP_MOD,
     OMAP3_PRM_IRQSTATUS_MPU_OFFSET);

 } while (prm_read_mod_reg(OCP_MOD, OMAP3_PRM_IRQSTATUS_MPU_OFFSET));

 return IRQ_HANDLED;
}
