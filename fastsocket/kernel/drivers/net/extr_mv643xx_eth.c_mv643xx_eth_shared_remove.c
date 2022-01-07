
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct mv643xx_eth_shared_platform_data* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct mv643xx_eth_shared_private {scalar_t__ err_interrupt; int base; int smi_bus; } ;
struct mv643xx_eth_shared_platform_data {int * shared_smi; } ;


 scalar_t__ NO_IRQ ;
 int free_irq (scalar_t__,struct mv643xx_eth_shared_private*) ;
 int iounmap (int ) ;
 int kfree (struct mv643xx_eth_shared_private*) ;
 int mdiobus_free (int ) ;
 int mdiobus_unregister (int ) ;
 struct mv643xx_eth_shared_private* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int mv643xx_eth_shared_remove(struct platform_device *pdev)
{
 struct mv643xx_eth_shared_private *msp = platform_get_drvdata(pdev);
 struct mv643xx_eth_shared_platform_data *pd = pdev->dev.platform_data;

 if (pd == ((void*)0) || pd->shared_smi == ((void*)0)) {
  mdiobus_unregister(msp->smi_bus);
  mdiobus_free(msp->smi_bus);
 }
 if (msp->err_interrupt != NO_IRQ)
  free_irq(msp->err_interrupt, msp);
 iounmap(msp->base);
 kfree(msp);

 return 0;
}
