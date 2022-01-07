
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int start; int end; } ;
struct platform_device {int dev; } ;


 int ENOENT ;
 int ENXIO ;
 int IORESOURCE_IRQ ;
 int IRQF_DISABLED ;
 int dev_name (int *) ;
 int free_irq (int,struct platform_device*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int) ;
 scalar_t__ request_irq (int,int ,int ,int ,struct platform_device*) ;
 int sh_mobile_i2c_isr ;

__attribute__((used)) static int sh_mobile_i2c_hook_irqs(struct platform_device *dev, int hook)
{
 struct resource *res;
 int ret = -ENXIO;
 int q, m;
 int k = 0;
 int n = 0;

 while ((res = platform_get_resource(dev, IORESOURCE_IRQ, k))) {
  for (n = res->start; hook && n <= res->end; n++) {
   if (request_irq(n, sh_mobile_i2c_isr, IRQF_DISABLED,
     dev_name(&dev->dev), dev))
    goto rollback;
  }
  k++;
 }

 if (hook)
  return k > 0 ? 0 : -ENOENT;

 k--;
 ret = 0;

 rollback:
 for (q = k; k >= 0; k--) {
  for (m = n; m >= res->start; m--)
   free_irq(m, dev);

  res = platform_get_resource(dev, IORESOURCE_IRQ, k - 1);
  m = res->end;
 }

 return ret;
}
