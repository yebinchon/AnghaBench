
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ivtv {TYPE_1__* card; } ;
struct i2c_algo_bit_data {struct ivtv* data; } ;
struct TYPE_2__ {int xceive_pin; } ;


 int IVTV_DEBUG_INFO (char*) ;
 int IVTV_REG_GPIO_OUT ;
 int XC2028_TUNER_RESET ;
 int msecs_to_jiffies (int) ;
 int read_reg (int ) ;
 int schedule_timeout_interruptible (int ) ;
 int write_reg (int,int ) ;

int ivtv_reset_tuner_gpio(void *dev, int component, int cmd, int value)
{
 struct i2c_algo_bit_data *algo = dev;
 struct ivtv *itv = algo->data;
 u32 curout;

 if (cmd != XC2028_TUNER_RESET)
  return 0;
 IVTV_DEBUG_INFO("Resetting tuner\n");
 curout = read_reg(IVTV_REG_GPIO_OUT);
 curout &= ~(1 << itv->card->xceive_pin);
 write_reg(curout, IVTV_REG_GPIO_OUT);
 schedule_timeout_interruptible(msecs_to_jiffies(1));

 curout |= 1 << itv->card->xceive_pin;
 write_reg(curout, IVTV_REG_GPIO_OUT);
 schedule_timeout_interruptible(msecs_to_jiffies(1));
 return 0;
}
