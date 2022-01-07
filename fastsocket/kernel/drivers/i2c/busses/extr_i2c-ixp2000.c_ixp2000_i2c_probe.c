
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__* driver; struct ixp2000_i2c_pins* platform_data; } ;
struct platform_device {TYPE_5__ dev; } ;
struct ixp2000_i2c_pins {int sda_pin; int scl_pin; } ;
struct TYPE_8__ {TYPE_5__* parent; } ;
struct TYPE_9__ {TYPE_3__ dev; TYPE_2__* algo_data; int name; } ;
struct TYPE_7__ {int udelay; int timeout; int getscl; int getsda; int setscl; int setsda; struct ixp2000_i2c_pins* data; } ;
struct ixp2000_i2c_data {TYPE_4__ adapter; TYPE_2__ algo_data; struct ixp2000_i2c_pins* gpio_pins; } ;
struct TYPE_6__ {int name; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int GPIO_IN ;
 int HZ ;
 int dev_err (TYPE_5__*,char*,int) ;
 int gpio_line_config (int ,int ) ;
 int gpio_line_set (int ,int ) ;
 int i2c_bit_add_bus (TYPE_4__*) ;
 int ixp2000_bit_getscl ;
 int ixp2000_bit_getsda ;
 int ixp2000_bit_setscl ;
 int ixp2000_bit_setsda ;
 int kfree (struct ixp2000_i2c_data*) ;
 struct ixp2000_i2c_data* kzalloc (int,int ) ;
 int platform_set_drvdata (struct platform_device*,struct ixp2000_i2c_data*) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static int ixp2000_i2c_probe(struct platform_device *plat_dev)
{
 int err;
 struct ixp2000_i2c_pins *gpio = plat_dev->dev.platform_data;
 struct ixp2000_i2c_data *drv_data =
  kzalloc(sizeof(struct ixp2000_i2c_data), GFP_KERNEL);

 if (!drv_data)
  return -ENOMEM;
 drv_data->gpio_pins = gpio;

 drv_data->algo_data.data = gpio;
 drv_data->algo_data.setsda = ixp2000_bit_setsda;
 drv_data->algo_data.setscl = ixp2000_bit_setscl;
 drv_data->algo_data.getsda = ixp2000_bit_getsda;
 drv_data->algo_data.getscl = ixp2000_bit_getscl;
 drv_data->algo_data.udelay = 6;
 drv_data->algo_data.timeout = HZ;

 strlcpy(drv_data->adapter.name, plat_dev->dev.driver->name,
  sizeof(drv_data->adapter.name));
 drv_data->adapter.algo_data = &drv_data->algo_data,

 drv_data->adapter.dev.parent = &plat_dev->dev;

 gpio_line_config(gpio->sda_pin, GPIO_IN);
 gpio_line_config(gpio->scl_pin, GPIO_IN);
 gpio_line_set(gpio->scl_pin, 0);
 gpio_line_set(gpio->sda_pin, 0);

 if ((err = i2c_bit_add_bus(&drv_data->adapter)) != 0) {
  dev_err(&plat_dev->dev, "Could not install, error %d\n", err);
  kfree(drv_data);
  return err;
 }

 platform_set_drvdata(plat_dev, drv_data);

 return 0;
}
