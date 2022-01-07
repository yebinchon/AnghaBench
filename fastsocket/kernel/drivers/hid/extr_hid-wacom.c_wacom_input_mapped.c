
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int* evbit; int keybit; int absbit; int mscbit; int relbit; } ;
struct hid_usage {int dummy; } ;
struct hid_input {struct input_dev* input; } ;
struct hid_field {int dummy; } ;
struct hid_device {int product; } ;


 int ABS_DISTANCE ;
 int ABS_MISC ;
 int ABS_PRESSURE ;
 int ABS_X ;
 int ABS_Y ;
 int BIT (int ) ;
 int BTN_0 ;
 int BTN_1 ;
 int BTN_2 ;
 int BTN_3 ;
 int BTN_4 ;
 int BTN_5 ;
 int BTN_6 ;
 int BTN_7 ;
 int BTN_8 ;
 int BTN_LEFT ;
 int BTN_MIDDLE ;
 int BTN_RIGHT ;
 int BTN_STYLUS ;
 int BTN_STYLUS2 ;
 int BTN_TOOL_FINGER ;
 int BTN_TOOL_MOUSE ;
 int BTN_TOOL_PEN ;
 int BTN_TOOL_RUBBER ;
 int BTN_TOUCH ;
 int EV_ABS ;
 int EV_KEY ;
 int EV_MSC ;
 int EV_REL ;
 int MSC_SERIAL ;
 int REL_WHEEL ;


 int __set_bit (int ,int ) ;
 int input_set_abs_params (struct input_dev*,int ,int ,int,int,int ) ;

__attribute__((used)) static int wacom_input_mapped(struct hid_device *hdev, struct hid_input *hi,
 struct hid_field *field, struct hid_usage *usage, unsigned long **bit,
        int *max)
{
 struct input_dev *input = hi->input;


 input->evbit[0] |= BIT(EV_KEY) | BIT(EV_ABS) | BIT(EV_REL);

 __set_bit(REL_WHEEL, input->relbit);

 __set_bit(BTN_TOOL_PEN, input->keybit);
 __set_bit(BTN_TOUCH, input->keybit);
 __set_bit(BTN_STYLUS, input->keybit);
 __set_bit(BTN_STYLUS2, input->keybit);
 __set_bit(BTN_LEFT, input->keybit);
 __set_bit(BTN_RIGHT, input->keybit);
 __set_bit(BTN_MIDDLE, input->keybit);


 input->evbit[0] |= BIT(EV_MSC);

 __set_bit(MSC_SERIAL, input->mscbit);

 __set_bit(BTN_0, input->keybit);
 __set_bit(BTN_1, input->keybit);
 __set_bit(BTN_TOOL_FINGER, input->keybit);


 __set_bit(BTN_TOOL_RUBBER, input->keybit);
 __set_bit(BTN_TOOL_MOUSE, input->keybit);

 switch (hdev->product) {
 case 129:
  input_set_abs_params(input, ABS_X, 0, 16704, 4, 0);
  input_set_abs_params(input, ABS_Y, 0, 12064, 4, 0);
  input_set_abs_params(input, ABS_PRESSURE, 0, 511, 0, 0);
  input_set_abs_params(input, ABS_DISTANCE, 0, 32, 0, 0);
  break;
 case 128:
  __set_bit(ABS_MISC, input->absbit);
  __set_bit(BTN_2, input->keybit);
  __set_bit(BTN_3, input->keybit);
  __set_bit(BTN_4, input->keybit);
  __set_bit(BTN_5, input->keybit);
  __set_bit(BTN_6, input->keybit);
  __set_bit(BTN_7, input->keybit);
  __set_bit(BTN_8, input->keybit);
  input_set_abs_params(input, ABS_X, 0, 40640, 4, 0);
  input_set_abs_params(input, ABS_Y, 0, 25400, 4, 0);
  input_set_abs_params(input, ABS_PRESSURE, 0, 2047, 0, 0);
  input_set_abs_params(input, ABS_DISTANCE, 0, 63, 0, 0);
  break;
 }

 return 0;
}
