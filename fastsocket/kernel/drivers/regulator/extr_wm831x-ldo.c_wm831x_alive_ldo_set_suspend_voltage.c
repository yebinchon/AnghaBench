
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm831x_ldo {int base; } ;
struct regulator_dev {int dummy; } ;


 int WM831X_ALIVE_LDO_SLEEP_CONTROL ;
 struct wm831x_ldo* rdev_get_drvdata (struct regulator_dev*) ;
 int wm831x_alive_ldo_set_voltage_int (struct regulator_dev*,int,int,int) ;

__attribute__((used)) static int wm831x_alive_ldo_set_suspend_voltage(struct regulator_dev *rdev,
          int uV)
{
 struct wm831x_ldo *ldo = rdev_get_drvdata(rdev);
 int reg = ldo->base + WM831X_ALIVE_LDO_SLEEP_CONTROL;

 return wm831x_alive_ldo_set_voltage_int(rdev, reg, uV, uV);
}
