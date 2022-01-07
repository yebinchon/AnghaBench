
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dev; } ;
typedef int irq_handler_t ;


 int IRQF_SHARED ;
 int dev_err (int *,char*,int) ;
 int request_irq (int,int ,int ,char const*,struct net_device*) ;

__attribute__((used)) static int
ks8695_setup_irq(int irq, const char *irq_name,
   irq_handler_t handler, struct net_device *ndev)
{
 int ret;

 ret = request_irq(irq, handler, IRQF_SHARED, irq_name, ndev);

 if (ret) {
  dev_err(&ndev->dev, "failure to request IRQ %d\n", irq);
  return ret;
 }

 return 0;
}
