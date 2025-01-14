
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int S3C2410_GPIO_INPUT ;
 unsigned long S3C2410_GPIO_IRQ ;
 int S3C_PMDBG (char*,int,unsigned int) ;
 int s3c2410_gpio_cfgpin (unsigned int,int ) ;
 unsigned long s3c2410_gpio_getcfg (unsigned int) ;
 int s3c2410_gpio_getirq (unsigned int) ;
 long s3c_irqwake_eintmask ;
 long s3c_irqwake_intmask ;

__attribute__((used)) static void s3c_pm_check_resume_pin(unsigned int pin, unsigned int irqoffs)
{
 unsigned long irqstate;
 unsigned long pinstate;
 int irq = s3c2410_gpio_getirq(pin);

 if (irqoffs < 4)
  irqstate = s3c_irqwake_intmask & (1L<<irqoffs);
 else
  irqstate = s3c_irqwake_eintmask & (1L<<irqoffs);

 pinstate = s3c2410_gpio_getcfg(pin);

 if (!irqstate) {
  if (pinstate == S3C2410_GPIO_IRQ)
   S3C_PMDBG("Leaving IRQ %d (pin %d) enabled\n", irq, pin);
 } else {
  if (pinstate == S3C2410_GPIO_IRQ) {
   S3C_PMDBG("Disabling IRQ %d (pin %d)\n", irq, pin);
   s3c2410_gpio_cfgpin(pin, S3C2410_GPIO_INPUT);
  }
 }
}
