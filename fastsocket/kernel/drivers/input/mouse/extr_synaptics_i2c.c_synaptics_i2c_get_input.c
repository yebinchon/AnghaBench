
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct synaptics_i2c {int client; struct input_dev* input; } ;
struct input_dev {int dummy; } ;
typedef int s8 ;
typedef int s32 ;


 int BTN_LEFT ;
 int DATA_REG0 ;
 int GESTURE ;
 int REGISTER_LENGTH ;
 int REL_X ;
 int REL_X_REG ;
 int REL_Y ;
 int input_report_key (struct input_dev*,int ,int) ;
 int input_report_rel (struct input_dev*,int ,int) ;
 int input_sync (struct input_dev*) ;
 scalar_t__ synaptics_i2c_check_error (int ) ;
 int synaptics_i2c_reg_get (int ,int ) ;
 int synaptics_i2c_word_get (int ,int ) ;

__attribute__((used)) static bool synaptics_i2c_get_input(struct synaptics_i2c *touch)
{
 struct input_dev *input = touch->input;
 int xy_delta, gesture;
 s32 data;
 s8 x_delta, y_delta;


 if (synaptics_i2c_check_error(touch->client))
  return 0;


 data = synaptics_i2c_reg_get(touch->client, DATA_REG0);
 gesture = (data >> GESTURE) & 0x1;





 xy_delta = synaptics_i2c_word_get(touch->client, REL_X_REG) & 0xffff;


 x_delta = xy_delta & 0xff;
 y_delta = (xy_delta >> REGISTER_LENGTH) & 0xff;


 input_report_key(input, BTN_LEFT, gesture);


 input_report_rel(input, REL_X, x_delta);
 input_report_rel(input, REL_Y, -y_delta);
 input_sync(input);

 return xy_delta || gesture;
}
