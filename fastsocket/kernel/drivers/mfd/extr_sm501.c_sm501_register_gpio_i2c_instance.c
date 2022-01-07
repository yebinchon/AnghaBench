
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sm501_platdata_gpio_i2c {int pin_scl; int pin_sda; int bus_num; int udelay; int timeout; } ;
struct sm501_devdata {int dev; } ;
struct TYPE_2__ {struct i2c_gpio_platform_data* platform_data; } ;
struct platform_device {int id; TYPE_1__ dev; } ;
struct i2c_gpio_platform_data {void* scl_pin; void* sda_pin; int udelay; int timeout; } ;


 int ENOMEM ;
 int dev_info (int ,char*,int ,void*,int ,void*,int ) ;
 struct platform_device* sm501_create_subdev (struct sm501_devdata*,char*,int ,int) ;
 void* sm501_gpio_pin2nr (struct sm501_devdata*,int ) ;
 int sm501_register_device (struct sm501_devdata*,struct platform_device*) ;

__attribute__((used)) static int sm501_register_gpio_i2c_instance(struct sm501_devdata *sm,
         struct sm501_platdata_gpio_i2c *iic)
{
 struct i2c_gpio_platform_data *icd;
 struct platform_device *pdev;

 pdev = sm501_create_subdev(sm, "i2c-gpio", 0,
       sizeof(struct i2c_gpio_platform_data));
 if (!pdev)
  return -ENOMEM;

 icd = pdev->dev.platform_data;





 icd->sda_pin = sm501_gpio_pin2nr(sm, iic->pin_sda);
 icd->scl_pin = sm501_gpio_pin2nr(sm, iic->pin_scl);
 icd->timeout = iic->timeout;
 icd->udelay = iic->udelay;







 pdev->id = iic->bus_num;

 dev_info(sm->dev, "registering i2c-%d: sda=%d (%d), scl=%d (%d)\n",
   iic->bus_num,
   icd->sda_pin, iic->pin_sda, icd->scl_pin, iic->pin_scl);

 return sm501_register_device(sm, pdev);
}
