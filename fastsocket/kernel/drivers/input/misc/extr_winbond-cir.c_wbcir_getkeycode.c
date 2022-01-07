
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wbcir_data {int dummy; } ;
struct input_dev {int dummy; } ;


 struct wbcir_data* input_get_drvdata (struct input_dev*) ;
 scalar_t__ wbcir_do_getkeycode (struct wbcir_data*,int ) ;

__attribute__((used)) static int
wbcir_getkeycode(struct input_dev *dev, int scancode, int *keycode)
{
 struct wbcir_data *data = input_get_drvdata(dev);

 *keycode = (int)wbcir_do_getkeycode(data, (u32)scancode);
 return 0;
}
