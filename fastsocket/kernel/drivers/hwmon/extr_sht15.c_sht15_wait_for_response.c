
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sht15_data {TYPE_1__* pdata; int dev; } ;
struct TYPE_2__ {int gpio_sck; int gpio_data; } ;


 int EIO ;
 int SHT15_TSCKH ;
 int SHT15_TSCKL ;
 int dev_err (int ,char*) ;
 int gpio_direction_input (int ) ;
 scalar_t__ gpio_get_value (int ) ;
 int gpio_set_value (int ,int) ;
 int ndelay (int ) ;
 int sht15_connection_reset (struct sht15_data*) ;

__attribute__((used)) static int sht15_wait_for_response(struct sht15_data *data)
{
 gpio_direction_input(data->pdata->gpio_data);
 gpio_set_value(data->pdata->gpio_sck, 1);
 ndelay(SHT15_TSCKH);
 if (gpio_get_value(data->pdata->gpio_data)) {
  gpio_set_value(data->pdata->gpio_sck, 0);
  dev_err(data->dev, "Command not acknowledged\n");
  sht15_connection_reset(data);
  return -EIO;
 }
 gpio_set_value(data->pdata->gpio_sck, 0);
 ndelay(SHT15_TSCKL);
 return 0;
}
