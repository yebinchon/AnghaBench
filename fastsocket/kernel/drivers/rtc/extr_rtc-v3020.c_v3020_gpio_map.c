
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct v3020_platform_data {int gpio_io; int gpio_rd; int gpio_wr; int gpio_cs; } ;
struct v3020 {TYPE_1__* gpio; } ;
struct platform_device {int dummy; } ;
struct TYPE_3__ {int gpio; int name; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 size_t V3020_CS ;
 size_t V3020_IO ;
 size_t V3020_RD ;
 size_t V3020_WR ;
 int gpio_direction_output (int ,int) ;
 int gpio_free (int ) ;
 int gpio_request (int ,int ) ;
 TYPE_1__* v3020_gpio ;

__attribute__((used)) static int v3020_gpio_map(struct v3020 *chip, struct platform_device *pdev,
     struct v3020_platform_data *pdata)
{
 int i, err;

 v3020_gpio[V3020_CS].gpio = pdata->gpio_cs;
 v3020_gpio[V3020_WR].gpio = pdata->gpio_wr;
 v3020_gpio[V3020_RD].gpio = pdata->gpio_rd;
 v3020_gpio[V3020_IO].gpio = pdata->gpio_io;

 for (i = 0; i < ARRAY_SIZE(v3020_gpio); i++) {
  err = gpio_request(v3020_gpio[i].gpio, v3020_gpio[i].name);
  if (err)
   goto err_request;

  gpio_direction_output(v3020_gpio[i].gpio, 1);
 }

 chip->gpio = v3020_gpio;

 return 0;

err_request:
 while (--i >= 0)
  gpio_free(v3020_gpio[i].gpio);

 return err;
}
