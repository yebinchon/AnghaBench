
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct wm8350 {int dummy; } ;
struct regulator_dev {int dummy; } ;


 size_t WM8350_CS1_ISEL_MASK ;
 int WM8350_CURRENT_SINK_DRIVER_A ;
 int WM8350_CURRENT_SINK_DRIVER_B ;


 int* isink_cur ;
 struct wm8350* rdev_get_drvdata (struct regulator_dev*) ;
 int rdev_get_id (struct regulator_dev*) ;
 size_t wm8350_reg_read (struct wm8350*,int ) ;

__attribute__((used)) static int wm8350_isink_get_current(struct regulator_dev *rdev)
{
 struct wm8350 *wm8350 = rdev_get_drvdata(rdev);
 int isink = rdev_get_id(rdev);
 u16 val;

 switch (isink) {
 case 129:
  val = wm8350_reg_read(wm8350, WM8350_CURRENT_SINK_DRIVER_A) &
      WM8350_CS1_ISEL_MASK;
  break;
 case 128:
  val = wm8350_reg_read(wm8350, WM8350_CURRENT_SINK_DRIVER_B) &
      WM8350_CS1_ISEL_MASK;
  break;
 default:
  return 0;
 }

 return (isink_cur[val] + 50) / 100;
}
