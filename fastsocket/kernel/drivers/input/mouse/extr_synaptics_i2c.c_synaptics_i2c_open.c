
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct synaptics_i2c {int client; } ;
struct input_dev {int dummy; } ;


 int NO_DATA_SLEEP_MSECS ;
 struct synaptics_i2c* input_get_drvdata (struct input_dev*) ;
 int msecs_to_jiffies (int ) ;
 scalar_t__ polling_req ;
 int synaptics_i2c_reschedule_work (struct synaptics_i2c*,int ) ;
 int synaptics_i2c_reset_config (int ) ;

__attribute__((used)) static int synaptics_i2c_open(struct input_dev *input)
{
 struct synaptics_i2c *touch = input_get_drvdata(input);
 int ret;

 ret = synaptics_i2c_reset_config(touch->client);
 if (ret)
  return ret;

 if (polling_req)
  synaptics_i2c_reschedule_work(touch,
    msecs_to_jiffies(NO_DATA_SLEEP_MSECS));

 return 0;
}
