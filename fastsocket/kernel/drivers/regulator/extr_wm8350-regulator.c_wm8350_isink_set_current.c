
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wm8350 {int dummy; } ;
struct regulator_dev {int dummy; } ;


 int EINVAL ;
 int WM8350_CS1_ISEL_MASK ;
 int WM8350_CURRENT_SINK_DRIVER_A ;
 int WM8350_CURRENT_SINK_DRIVER_B ;


 int get_isink_val (int,int,int*) ;
 struct wm8350* rdev_get_drvdata (struct regulator_dev*) ;
 int rdev_get_id (struct regulator_dev*) ;
 int wm8350_reg_read (struct wm8350*,int ) ;
 int wm8350_reg_write (struct wm8350*,int ,int) ;

__attribute__((used)) static int wm8350_isink_set_current(struct regulator_dev *rdev, int min_uA,
 int max_uA)
{
 struct wm8350 *wm8350 = rdev_get_drvdata(rdev);
 int isink = rdev_get_id(rdev);
 u16 val, setting;
 int ret;

 ret = get_isink_val(min_uA, max_uA, &setting);
 if (ret != 0)
  return ret;

 switch (isink) {
 case 129:
  val = wm8350_reg_read(wm8350, WM8350_CURRENT_SINK_DRIVER_A) &
      ~WM8350_CS1_ISEL_MASK;
  wm8350_reg_write(wm8350, WM8350_CURRENT_SINK_DRIVER_A,
     val | setting);
  break;
 case 128:
  val = wm8350_reg_read(wm8350, WM8350_CURRENT_SINK_DRIVER_B) &
      ~WM8350_CS1_ISEL_MASK;
  wm8350_reg_write(wm8350, WM8350_CURRENT_SINK_DRIVER_B,
     val | setting);
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
