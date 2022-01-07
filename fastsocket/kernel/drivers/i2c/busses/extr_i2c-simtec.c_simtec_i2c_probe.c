
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * parent; } ;
struct TYPE_6__ {int name; TYPE_1__ dev; TYPE_2__* algo_data; int owner; } ;
struct TYPE_5__ {int udelay; int timeout; int getscl; int getsda; int setscl; int setsda; struct simtec_i2c_data* data; } ;
struct simtec_i2c_data {struct simtec_i2c_data* ioarea; int * reg; TYPE_3__ adap; TYPE_2__ bit; } ;
struct resource {int start; } ;
struct platform_device {int dev; int name; } ;


 int ENOENT ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int HZ ;
 int IORESOURCE_MEM ;
 int THIS_MODULE ;
 int dev_err (int *,char*) ;
 int i2c_bit_add_bus (TYPE_3__*) ;
 int * ioremap (int ,int) ;
 int iounmap (int *) ;
 int kfree (struct simtec_i2c_data*) ;
 struct simtec_i2c_data* kzalloc (int,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct simtec_i2c_data*) ;
 int release_resource (struct simtec_i2c_data*) ;
 struct simtec_i2c_data* request_mem_region (int ,int,int ) ;
 int resource_size (struct resource*) ;
 int simtec_i2c_getscl ;
 int simtec_i2c_getsda ;
 int simtec_i2c_setscl ;
 int simtec_i2c_setsda ;
 int strlcpy (int ,char*,int) ;

__attribute__((used)) static int simtec_i2c_probe(struct platform_device *dev)
{
 struct simtec_i2c_data *pd;
 struct resource *res;
 int size;
 int ret;

 pd = kzalloc(sizeof(struct simtec_i2c_data), GFP_KERNEL);
 if (pd == ((void*)0)) {
  dev_err(&dev->dev, "cannot allocate private data\n");
  return -ENOMEM;
 }

 platform_set_drvdata(dev, pd);

 res = platform_get_resource(dev, IORESOURCE_MEM, 0);
 if (res == ((void*)0)) {
  dev_err(&dev->dev, "cannot find IO resource\n");
  ret = -ENOENT;
  goto err;
 }

 size = resource_size(res);

 pd->ioarea = request_mem_region(res->start, size, dev->name);
 if (pd->ioarea == ((void*)0)) {
  dev_err(&dev->dev, "cannot request IO\n");
  ret = -ENXIO;
  goto err;
 }

 pd->reg = ioremap(res->start, size);
 if (pd->reg == ((void*)0)) {
  dev_err(&dev->dev, "cannot map IO\n");
  ret = -ENXIO;
  goto err_res;
 }



 pd->adap.owner = THIS_MODULE;
 pd->adap.algo_data = &pd->bit;
 pd->adap.dev.parent = &dev->dev;

 strlcpy(pd->adap.name, "Simtec I2C", sizeof(pd->adap.name));

 pd->bit.data = pd;
 pd->bit.setsda = simtec_i2c_setsda;
 pd->bit.setscl = simtec_i2c_setscl;
 pd->bit.getsda = simtec_i2c_getsda;
 pd->bit.getscl = simtec_i2c_getscl;
 pd->bit.timeout = HZ;
 pd->bit.udelay = 20;

 ret = i2c_bit_add_bus(&pd->adap);
 if (ret)
  goto err_all;

 return 0;

 err_all:
 iounmap(pd->reg);

 err_res:
 release_resource(pd->ioarea);
 kfree(pd->ioarea);

 err:
 kfree(pd);
 return ret;
}
