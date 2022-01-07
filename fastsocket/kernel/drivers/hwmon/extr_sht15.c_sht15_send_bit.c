
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sht15_data {TYPE_1__* pdata; } ;
struct TYPE_2__ {int gpio_sck; int gpio_data; } ;


 int SHT15_TSCKH ;
 int SHT15_TSCKL ;
 int SHT15_TSU ;
 int gpio_set_value (int ,int) ;
 int ndelay (int ) ;

__attribute__((used)) static inline void sht15_send_bit(struct sht15_data *data, int val)
{

 gpio_set_value(data->pdata->gpio_data, val);
 ndelay(SHT15_TSU);
 gpio_set_value(data->pdata->gpio_sck, 1);
 ndelay(SHT15_TSCKH);
 gpio_set_value(data->pdata->gpio_sck, 0);
 ndelay(SHT15_TSCKL);
}
