
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
struct alps_data {int dummy; } ;


 int ABS_X ;
 int ABS_Y ;
 int input_set_abs_params (struct input_dev*,int ,int ,int,int ,int ) ;

__attribute__((used)) static void alps_set_abs_params_st(struct alps_data *priv,
       struct input_dev *dev1)
{
 input_set_abs_params(dev1, ABS_X, 0, 1023, 0, 0);
 input_set_abs_params(dev1, ABS_Y, 0, 767, 0, 0);
}
