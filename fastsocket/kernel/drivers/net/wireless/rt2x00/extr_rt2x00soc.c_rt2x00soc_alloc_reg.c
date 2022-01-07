
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int base; } ;
struct rt2x00_dev {void* rf; TYPE_2__* ops; void* eeprom; TYPE_1__ csr; int dev; } ;
struct resource {int start; } ;
struct platform_device {int dummy; } ;
struct TYPE_4__ {int rf_size; int eeprom_size; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 int ioremap (int ,int ) ;
 void* kzalloc (int ,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int resource_size (struct resource*) ;
 int rt2x00_probe_err (char*) ;
 int rt2x00soc_free_reg (struct rt2x00_dev*) ;
 struct platform_device* to_platform_device (int ) ;

__attribute__((used)) static int rt2x00soc_alloc_reg(struct rt2x00_dev *rt2x00dev)
{
 struct platform_device *pdev = to_platform_device(rt2x00dev->dev);
 struct resource *res;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!res)
  return -ENODEV;

 rt2x00dev->csr.base = ioremap(res->start, resource_size(res));
 if (!rt2x00dev->csr.base)
  return -ENOMEM;

 rt2x00dev->eeprom = kzalloc(rt2x00dev->ops->eeprom_size, GFP_KERNEL);
 if (!rt2x00dev->eeprom)
  goto exit;

 rt2x00dev->rf = kzalloc(rt2x00dev->ops->rf_size, GFP_KERNEL);
 if (!rt2x00dev->rf)
  goto exit;

 return 0;

exit:
 rt2x00_probe_err("Failed to allocate registers\n");
 rt2x00soc_free_reg(rt2x00dev);

 return -ENOMEM;
}
