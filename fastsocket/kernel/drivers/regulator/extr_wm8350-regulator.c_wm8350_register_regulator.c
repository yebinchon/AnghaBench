
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int max_dcdc; int max_isink; struct platform_device** pdev; } ;
struct wm8350 {TYPE_2__ pmic; int dev; } ;
struct regulator_init_data {struct wm8350* driver_data; } ;
struct TYPE_3__ {int parent; struct regulator_init_data* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;


 int EBUSY ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int NUM_WM8350_REGULATORS ;
 int WM8350_DCDC_1 ;
 int WM8350_DCDC_6 ;
 int WM8350_ISINK_A ;
 int WM8350_ISINK_B ;
 int dev_err (int ,char*,int,int) ;
 int platform_device_add (struct platform_device*) ;
 struct platform_device* platform_device_alloc (char*,int) ;
 int platform_device_del (struct platform_device*) ;
 int platform_set_drvdata (struct platform_device*,struct wm8350*) ;

int wm8350_register_regulator(struct wm8350 *wm8350, int reg,
         struct regulator_init_data *initdata)
{
 struct platform_device *pdev;
 int ret;
 if (reg < 0 || reg >= NUM_WM8350_REGULATORS)
  return -EINVAL;

 if (wm8350->pmic.pdev[reg])
  return -EBUSY;

 if (reg >= WM8350_DCDC_1 && reg <= WM8350_DCDC_6 &&
     reg > wm8350->pmic.max_dcdc)
  return -ENODEV;
 if (reg >= WM8350_ISINK_A && reg <= WM8350_ISINK_B &&
     reg > wm8350->pmic.max_isink)
  return -ENODEV;

 pdev = platform_device_alloc("wm8350-regulator", reg);
 if (!pdev)
  return -ENOMEM;

 wm8350->pmic.pdev[reg] = pdev;

 initdata->driver_data = wm8350;

 pdev->dev.platform_data = initdata;
 pdev->dev.parent = wm8350->dev;
 platform_set_drvdata(pdev, wm8350);

 ret = platform_device_add(pdev);

 if (ret != 0) {
  dev_err(wm8350->dev, "Failed to register regulator %d: %d\n",
   reg, ret);
  platform_device_del(pdev);
  wm8350->pmic.pdev[reg] = ((void*)0);
 }

 return ret;
}
