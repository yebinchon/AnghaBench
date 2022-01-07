
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm831x_ldo {struct wm831x* wm831x; } ;
struct wm831x {int dummy; } ;
struct regulator_dev {int dummy; } ;


 int WM831X_LDO_ENABLE ;
 struct wm831x_ldo* rdev_get_drvdata (struct regulator_dev*) ;
 int rdev_get_id (struct regulator_dev*) ;
 int wm831x_set_bits (struct wm831x*,int ,int,int ) ;

__attribute__((used)) static int wm831x_ldo_disable(struct regulator_dev *rdev)
{
 struct wm831x_ldo *ldo = rdev_get_drvdata(rdev);
 struct wm831x *wm831x = ldo->wm831x;
 int mask = 1 << rdev_get_id(rdev);

 return wm831x_set_bits(wm831x, WM831X_LDO_ENABLE, mask, 0);
}
