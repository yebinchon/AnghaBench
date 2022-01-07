
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct resource {int start; } ;
struct platform_device {scalar_t__ id; int dev; } ;
struct TYPE_5__ {int * parent; } ;
struct TYPE_7__ {scalar_t__ nr; TYPE_1__ dev; TYPE_2__* algo_data; int name; int owner; } ;
struct TYPE_6__ {struct i2c_versatile* data; } ;
struct i2c_versatile {scalar_t__ base; TYPE_3__ adap; TYPE_2__ algo; } ;


 int EBUSY ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ I2C_CONTROLS ;
 int IORESOURCE_MEM ;
 int SCL ;
 int SDA ;
 int THIS_MODULE ;
 int i2c_bit_add_bus (TYPE_3__*) ;
 int i2c_bit_add_numbered_bus (TYPE_3__*) ;
 TYPE_2__ i2c_versatile_algo ;
 scalar_t__ ioremap (int ,int ) ;
 int iounmap (scalar_t__) ;
 int kfree (struct i2c_versatile*) ;
 struct i2c_versatile* kzalloc (int,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct i2c_versatile*) ;
 int release_mem_region (int ,int ) ;
 int request_mem_region (int ,int ,char*) ;
 int resource_size (struct resource*) ;
 int strlcpy (int ,char*,int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int i2c_versatile_probe(struct platform_device *dev)
{
 struct i2c_versatile *i2c;
 struct resource *r;
 int ret;

 r = platform_get_resource(dev, IORESOURCE_MEM, 0);
 if (!r) {
  ret = -EINVAL;
  goto err_out;
 }

 if (!request_mem_region(r->start, resource_size(r), "versatile-i2c")) {
  ret = -EBUSY;
  goto err_out;
 }

 i2c = kzalloc(sizeof(struct i2c_versatile), GFP_KERNEL);
 if (!i2c) {
  ret = -ENOMEM;
  goto err_release;
 }

 i2c->base = ioremap(r->start, resource_size(r));
 if (!i2c->base) {
  ret = -ENOMEM;
  goto err_free;
 }

 writel(SCL | SDA, i2c->base + I2C_CONTROLS);

 i2c->adap.owner = THIS_MODULE;
 strlcpy(i2c->adap.name, "Versatile I2C adapter", sizeof(i2c->adap.name));
 i2c->adap.algo_data = &i2c->algo;
 i2c->adap.dev.parent = &dev->dev;
 i2c->algo = i2c_versatile_algo;
 i2c->algo.data = i2c;

 if (dev->id >= 0) {

  i2c->adap.nr = dev->id;
  ret = i2c_bit_add_numbered_bus(&i2c->adap);
 } else

  ret = i2c_bit_add_bus(&i2c->adap);
 if (ret >= 0) {
  platform_set_drvdata(dev, i2c);
  return 0;
 }

 iounmap(i2c->base);
 err_free:
 kfree(i2c);
 err_release:
 release_mem_region(r->start, resource_size(r));
 err_out:
 return ret;
}
