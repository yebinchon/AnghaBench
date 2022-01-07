
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {size_t id; } ;
struct bfin_twi_iface {int regs_base; int irq; int adap; } ;


 int free_irq (int ,struct bfin_twi_iface*) ;
 int i2c_del_adapter (int *) ;
 int iounmap (int ) ;
 int kfree (struct bfin_twi_iface*) ;
 int peripheral_free_list (int ) ;
 int * pin_req ;
 struct bfin_twi_iface* platform_get_drvdata (struct platform_device*) ;
 int platform_set_drvdata (struct platform_device*,int *) ;

__attribute__((used)) static int i2c_bfin_twi_remove(struct platform_device *pdev)
{
 struct bfin_twi_iface *iface = platform_get_drvdata(pdev);

 platform_set_drvdata(pdev, ((void*)0));

 i2c_del_adapter(&(iface->adap));
 free_irq(iface->irq, iface);
 peripheral_free_list(pin_req[pdev->id]);
 iounmap(iface->regs_base);
 kfree(iface);

 return 0;
}
