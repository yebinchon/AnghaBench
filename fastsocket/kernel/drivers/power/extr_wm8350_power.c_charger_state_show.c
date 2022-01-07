
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8350 {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int WM8350_BATTERY_CHARGER_CONTROL_2 ;

 int WM8350_CHG_STS_MASK ;


 struct wm8350* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,char*) ;
 int wm8350_reg_read (struct wm8350*,int ) ;

__attribute__((used)) static ssize_t charger_state_show(struct device *dev,
     struct device_attribute *attr, char *buf)
{
 struct wm8350 *wm8350 = dev_get_drvdata(dev);
 char *charge;
 int state;

 state = wm8350_reg_read(wm8350, WM8350_BATTERY_CHARGER_CONTROL_2) &
     WM8350_CHG_STS_MASK;
 switch (state) {
 case 129:
  charge = "Charger Off";
  break;
 case 128:
  charge = "Trickle Charging";
  break;
 case 130:
  charge = "Fast Charging";
  break;
 default:
  return 0;
 }

 return sprintf(buf, "%s\n", charge);
}
