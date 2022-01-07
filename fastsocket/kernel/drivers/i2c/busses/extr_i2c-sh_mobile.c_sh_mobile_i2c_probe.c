
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * parent; } ;
struct i2c_adapter {int retries; int nr; int name; TYPE_1__ dev; int * algo; int owner; } ;
struct sh_mobile_i2c_data {int clk; int * reg; int wait; int lock; struct i2c_adapter adap; int * dev; } ;
struct resource {int start; } ;
struct platform_device {int id; int dev; int name; } ;
typedef int clk_name ;


 int ENOENT ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int THIS_MODULE ;
 int clk_get (int *,char*) ;
 int clk_put (int ) ;
 int dev_err (int *,char*,...) ;
 int i2c_add_numbered_adapter (struct i2c_adapter*) ;
 int i2c_set_adapdata (struct i2c_adapter*,struct sh_mobile_i2c_data*) ;
 int init_waitqueue_head (int *) ;
 int * ioremap (int ,int) ;
 int iounmap (int *) ;
 int kfree (struct sh_mobile_i2c_data*) ;
 struct sh_mobile_i2c_data* kzalloc (int,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct sh_mobile_i2c_data*) ;
 int pm_runtime_enable (int *) ;
 int pm_suspend_ignore_children (int *,int) ;
 int resource_size (struct resource*) ;
 int sh_mobile_i2c_algorithm ;
 int sh_mobile_i2c_hook_irqs (struct platform_device*,int) ;
 int snprintf (char*,int,char*,int) ;
 int spin_lock_init (int *) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static int sh_mobile_i2c_probe(struct platform_device *dev)
{
 struct sh_mobile_i2c_data *pd;
 struct i2c_adapter *adap;
 struct resource *res;
 char clk_name[8];
 int size;
 int ret;

 pd = kzalloc(sizeof(struct sh_mobile_i2c_data), GFP_KERNEL);
 if (pd == ((void*)0)) {
  dev_err(&dev->dev, "cannot allocate private data\n");
  return -ENOMEM;
 }

 snprintf(clk_name, sizeof(clk_name), "i2c%d", dev->id);
 pd->clk = clk_get(&dev->dev, clk_name);
 if (IS_ERR(pd->clk)) {
  dev_err(&dev->dev, "cannot get clock \"%s\"\n", clk_name);
  ret = PTR_ERR(pd->clk);
  goto err;
 }

 ret = sh_mobile_i2c_hook_irqs(dev, 1);
 if (ret) {
  dev_err(&dev->dev, "cannot request IRQ\n");
  goto err_clk;
 }

 pd->dev = &dev->dev;
 platform_set_drvdata(dev, pd);

 res = platform_get_resource(dev, IORESOURCE_MEM, 0);
 if (res == ((void*)0)) {
  dev_err(&dev->dev, "cannot find IO resource\n");
  ret = -ENOENT;
  goto err_irq;
 }

 size = resource_size(res);

 pd->reg = ioremap(res->start, size);
 if (pd->reg == ((void*)0)) {
  dev_err(&dev->dev, "cannot map IO\n");
  ret = -ENXIO;
  goto err_irq;
 }
 pm_suspend_ignore_children(&dev->dev, 1);
 pm_runtime_enable(&dev->dev);


 adap = &pd->adap;
 i2c_set_adapdata(adap, pd);

 adap->owner = THIS_MODULE;
 adap->algo = &sh_mobile_i2c_algorithm;
 adap->dev.parent = &dev->dev;
 adap->retries = 5;
 adap->nr = dev->id;

 strlcpy(adap->name, dev->name, sizeof(adap->name));

 spin_lock_init(&pd->lock);
 init_waitqueue_head(&pd->wait);

 ret = i2c_add_numbered_adapter(adap);
 if (ret < 0) {
  dev_err(&dev->dev, "cannot add numbered adapter\n");
  goto err_all;
 }

 return 0;

 err_all:
 iounmap(pd->reg);
 err_irq:
 sh_mobile_i2c_hook_irqs(dev, 0);
 err_clk:
 clk_put(pd->clk);
 err:
 kfree(pd);
 return ret;
}
