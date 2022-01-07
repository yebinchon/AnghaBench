
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int absbit; } ;
 int input_set_abs_params (struct input_dev*,short,int,int,int,int) ;
 int set_bit (short,int ) ;

__attribute__((used)) static void xpad_set_up_abs(struct input_dev *input_dev, signed short abs)
{
 set_bit(abs, input_dev->absbit);

 switch (abs) {
 case 130:
 case 129:
 case 133:
 case 132:
  input_set_abs_params(input_dev, abs, -32768, 32767, 16, 128);
  break;
 case 128:
 case 131:
  input_set_abs_params(input_dev, abs, 0, 255, 0, 0);
  break;
 case 135:
 case 134:
  input_set_abs_params(input_dev, abs, -1, 1, 0, 0);
  break;
 }
}
