
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int base_hi; } ;
typedef TYPE_1__ imm_struct ;


 int printk (char*) ;
 int r_ecr (int) ;
 int udelay (int) ;

__attribute__((used)) static inline void ecp_sync(imm_struct *dev)
{
 int i, ppb_hi = dev->base_hi;

 if (ppb_hi == 0)
  return;

 if ((r_ecr(ppb_hi) & 0xe0) == 0x60) {
  for (i = 0; i < 100; i++) {
   if (r_ecr(ppb_hi) & 0x01)
    return;
   udelay(5);
  }
  printk("imm: ECP sync failed as data still present in FIFO.\n");
 }
}
