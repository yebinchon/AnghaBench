
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nasid_t ;
typedef int hubreg_t ;


 int PI_INT_MASK0_A ;
 int PI_INT_MASK0_B ;
 int PI_INT_MASK1_A ;
 int PI_INT_MASK1_B ;
 int PI_INT_PEND0 ;
 int PI_INT_PEND1 ;
 int REMOTE_HUB_L (int ,int ) ;
 int printk (char*,...) ;

void nmi_dump_hub_irq(nasid_t nasid, int slice)
{
 hubreg_t mask0, mask1, pend0, pend1;

 if (slice == 0) {
  mask0 = REMOTE_HUB_L(nasid, PI_INT_MASK0_A);
  mask1 = REMOTE_HUB_L(nasid, PI_INT_MASK1_A);
 } else {
  mask0 = REMOTE_HUB_L(nasid, PI_INT_MASK0_B);
  mask1 = REMOTE_HUB_L(nasid, PI_INT_MASK1_B);
 }

 pend0 = REMOTE_HUB_L(nasid, PI_INT_PEND0);
 pend1 = REMOTE_HUB_L(nasid, PI_INT_PEND1);

 printk("PI_INT_MASK0: %16Lx PI_INT_MASK1: %16Lx\n", mask0, mask1);
 printk("PI_INT_PEND0: %16Lx PI_INT_PEND1: %16Lx\n", pend0, pend1);
 printk("\n\n");
}
