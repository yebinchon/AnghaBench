
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int requires_esl; scalar_t__ mem_ptr; int pcidev; } ;
typedef TYPE_1__ ips_ha_t ;


 int IPS_BIT_I960_MSG0I ;
 int IPS_BIT_I960_MSG1I ;
 int IPS_GOOD_POST_STATUS ;
 int IPS_ONE_SEC ;
 int IPS_PRINTK (int ,int ,char*,...) ;
 scalar_t__ IPS_REG_I2O_HIR ;
 scalar_t__ IPS_REG_I960_MSG0 ;
 scalar_t__ IPS_REG_I960_MSG1 ;
 scalar_t__ IPS_REG_I960_OIMR ;
 int KERN_WARNING ;
 int MDELAY (int ) ;
 int METHOD_TRACE (char*,int) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int
ips_init_morpheus(ips_ha_t * ha)
{
 uint32_t Post;
 uint32_t Config;
 uint32_t Isr;
 uint32_t Oimr;
 int i;

 METHOD_TRACE("ips_init_morpheus", 1);


 for (i = 0; i < 45; i++) {
  Isr = readl(ha->mem_ptr + IPS_REG_I2O_HIR);

  if (Isr & IPS_BIT_I960_MSG0I)
   break;


  MDELAY(IPS_ONE_SEC);
 }

 if (i >= 45) {

  IPS_PRINTK(KERN_WARNING, ha->pcidev,
      "timeout waiting for post.\n");

  return (0);
 }

 Post = readl(ha->mem_ptr + IPS_REG_I960_MSG0);

 if (Post == 0x4F00) {
  IPS_PRINTK(KERN_WARNING, ha->pcidev,
      "Flashing Battery PIC, Please wait ...\n");


  Isr = (uint32_t) IPS_BIT_I960_MSG0I;
  writel(Isr, ha->mem_ptr + IPS_REG_I2O_HIR);

  for (i = 0; i < 120; i++) {
   Post = readl(ha->mem_ptr + IPS_REG_I960_MSG0);
   if (Post != 0x4F00)
    break;

   MDELAY(IPS_ONE_SEC);
  }

  if (i >= 120) {
   IPS_PRINTK(KERN_WARNING, ha->pcidev,
       "timeout waiting for Battery PIC Flash\n");
   return (0);
  }

 }


 Isr = (uint32_t) IPS_BIT_I960_MSG0I;
 writel(Isr, ha->mem_ptr + IPS_REG_I2O_HIR);

 if (Post < (IPS_GOOD_POST_STATUS << 8)) {
  IPS_PRINTK(KERN_WARNING, ha->pcidev,
      "reset controller fails (post status %x).\n", Post);

  return (0);
 }


 for (i = 0; i < 240; i++) {
  Isr = readl(ha->mem_ptr + IPS_REG_I2O_HIR);

  if (Isr & IPS_BIT_I960_MSG1I)
   break;


  MDELAY(IPS_ONE_SEC);
 }

 if (i >= 240) {

  IPS_PRINTK(KERN_WARNING, ha->pcidev,
      "timeout waiting for config.\n");

  return (0);
 }

 Config = readl(ha->mem_ptr + IPS_REG_I960_MSG1);


 Isr = (uint32_t) IPS_BIT_I960_MSG1I;
 writel(Isr, ha->mem_ptr + IPS_REG_I2O_HIR);


 Oimr = readl(ha->mem_ptr + IPS_REG_I960_OIMR);
 Oimr &= ~0x8;
 writel(Oimr, ha->mem_ptr + IPS_REG_I960_OIMR);




 if (Post == 0xEF10) {
  if ((Config == 0x000F) || (Config == 0x0009))
   ha->requires_esl = 1;
 }

 return (1);
}
