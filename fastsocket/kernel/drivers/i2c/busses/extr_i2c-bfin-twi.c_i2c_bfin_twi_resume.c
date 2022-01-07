
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; int name; } ;
struct bfin_twi_iface {int saved_control; int saved_clkdiv; int irq; } ;


 int ENODEV ;
 int IRQF_DISABLED ;
 int bfin_twi_interrupt_entry ;
 int dev_err (int *,char*,int ) ;
 struct bfin_twi_iface* platform_get_drvdata (struct platform_device*) ;
 int request_irq (int ,int ,int ,int ,struct bfin_twi_iface*) ;
 int write_CLKDIV (struct bfin_twi_iface*,int ) ;
 int write_CONTROL (struct bfin_twi_iface*,int ) ;

__attribute__((used)) static int i2c_bfin_twi_resume(struct platform_device *pdev)
{
 struct bfin_twi_iface *iface = platform_get_drvdata(pdev);

 int rc = request_irq(iface->irq, bfin_twi_interrupt_entry,
  IRQF_DISABLED, pdev->name, iface);
 if (rc) {
  dev_err(&pdev->dev, "Can't get IRQ %d !\n", iface->irq);
  return -ENODEV;
 }


 write_CLKDIV(iface, iface->saved_clkdiv);


 write_CONTROL(iface, iface->saved_control);

 return 0;
}
