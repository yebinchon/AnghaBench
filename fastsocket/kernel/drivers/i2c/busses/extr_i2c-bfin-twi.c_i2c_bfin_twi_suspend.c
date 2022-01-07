
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct bfin_twi_iface {int saved_control; int irq; int saved_clkdiv; } ;
typedef int pm_message_t ;


 int TWI_ENA ;
 int free_irq (int ,struct bfin_twi_iface*) ;
 struct bfin_twi_iface* platform_get_drvdata (struct platform_device*) ;
 int read_CLKDIV (struct bfin_twi_iface*) ;
 int read_CONTROL (struct bfin_twi_iface*) ;
 int write_CONTROL (struct bfin_twi_iface*,int) ;

__attribute__((used)) static int i2c_bfin_twi_suspend(struct platform_device *pdev, pm_message_t state)
{
 struct bfin_twi_iface *iface = platform_get_drvdata(pdev);

 iface->saved_clkdiv = read_CLKDIV(iface);
 iface->saved_control = read_CONTROL(iface);

 free_irq(iface->irq, iface);


 write_CONTROL(iface, iface->saved_control & ~TWI_ENA);

 return 0;
}
