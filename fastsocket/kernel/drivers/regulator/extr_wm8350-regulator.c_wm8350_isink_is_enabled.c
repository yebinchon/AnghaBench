
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8350 {int dummy; } ;
struct regulator_dev {int dummy; } ;


 int EINVAL ;
 int WM8350_CURRENT_SINK_DRIVER_A ;
 int WM8350_CURRENT_SINK_DRIVER_B ;


 struct wm8350* rdev_get_drvdata (struct regulator_dev*) ;
 int rdev_get_id (struct regulator_dev*) ;
 int wm8350_reg_read (struct wm8350*,int ) ;

__attribute__((used)) static int wm8350_isink_is_enabled(struct regulator_dev *rdev)
{
 struct wm8350 *wm8350 = rdev_get_drvdata(rdev);
 int isink = rdev_get_id(rdev);

 switch (isink) {
 case 129:
  return wm8350_reg_read(wm8350, WM8350_CURRENT_SINK_DRIVER_A) &
      0x8000;
 case 128:
  return wm8350_reg_read(wm8350, WM8350_CURRENT_SINK_DRIVER_B) &
      0x8000;
 }
 return -EINVAL;
}
