
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct twl4030_platform_data {int vaux4; int vaux3; int vaux1; int vsim; int vmmc2; int vpll2; int vaux2; int vdac; int vmmc1; scalar_t__ irq_base; int * usb; int * madc; int * keypad; int * gpio; int * bci; } ;
struct TYPE_2__ {int valid_modes_mask; int valid_ops_mask; } ;
struct regulator_init_data {TYPE_1__ constraints; } ;
struct regulator_consumer_supply {char* supply; struct device* dev; } ;
struct device {int dummy; } ;


 scalar_t__ IS_ERR (struct device*) ;
 int PTR_ERR (struct device*) ;
 int REGULATOR_CHANGE_MODE ;
 int REGULATOR_CHANGE_STATUS ;
 int REGULATOR_MODE_NORMAL ;
 int REGULATOR_MODE_STANDBY ;
 unsigned long TPS_SUBSET ;
 int TWL4030_REG_VAUX1 ;
 int TWL4030_REG_VAUX2 ;
 int TWL4030_REG_VAUX2_4030 ;
 int TWL4030_REG_VAUX3 ;
 int TWL4030_REG_VAUX4 ;
 int TWL4030_REG_VDAC ;
 int TWL4030_REG_VMMC1 ;
 int TWL4030_REG_VMMC2 ;
 int TWL4030_REG_VPLL2 ;
 int TWL4030_REG_VSIM ;
 int TWL4030_REG_VUSB1V5 ;
 int TWL4030_REG_VUSB1V8 ;
 int TWL4030_REG_VUSB3V1 ;
 unsigned long TWL4030_VAUX2 ;
 struct device* add_child (int,char*,int *,int,int,scalar_t__,scalar_t__) ;
 struct device* add_regulator (int ,int ) ;
 struct device* add_regulator_linked (int ,struct regulator_init_data*,struct regulator_consumer_supply*,int) ;
 scalar_t__ twl_has_bci () ;
 scalar_t__ twl_has_gpio () ;
 scalar_t__ twl_has_keypad () ;
 scalar_t__ twl_has_madc () ;
 scalar_t__ twl_has_pwrbutton () ;
 scalar_t__ twl_has_regulator () ;
 scalar_t__ twl_has_rtc () ;
 scalar_t__ twl_has_usb () ;
 scalar_t__ twl_has_watchdog () ;

__attribute__((used)) static int
add_children(struct twl4030_platform_data *pdata, unsigned long features)
{
 struct device *child;

 if (twl_has_bci() && pdata->bci && !(features & TPS_SUBSET)) {
  child = add_child(3, "twl4030_bci",
    pdata->bci, sizeof(*pdata->bci),
    0,

    pdata->irq_base + 8 + 1, pdata->irq_base + 2);
  if (IS_ERR(child))
   return PTR_ERR(child);
 }

 if (twl_has_gpio() && pdata->gpio) {
  child = add_child(1, "twl4030_gpio",
    pdata->gpio, sizeof(*pdata->gpio),
    0, pdata->irq_base + 0, 0);
  if (IS_ERR(child))
   return PTR_ERR(child);
 }

 if (twl_has_keypad() && pdata->keypad) {
  child = add_child(2, "twl4030_keypad",
    pdata->keypad, sizeof(*pdata->keypad),
    1, pdata->irq_base + 1, 0);
  if (IS_ERR(child))
   return PTR_ERR(child);
 }

 if (twl_has_madc() && pdata->madc) {
  child = add_child(2, "twl4030_madc",
    pdata->madc, sizeof(*pdata->madc),
    1, pdata->irq_base + 3, 0);
  if (IS_ERR(child))
   return PTR_ERR(child);
 }

 if (twl_has_rtc()) {







  child = add_child(3, "twl4030_rtc",
    ((void*)0), 0,
    1, pdata->irq_base + 8 + 3, 0);
  if (IS_ERR(child))
   return PTR_ERR(child);
 }

 if (twl_has_usb() && pdata->usb) {

  static struct regulator_consumer_supply usb1v5 = {
   .supply = "usb1v5",
  };
  static struct regulator_consumer_supply usb1v8 = {
   .supply = "usb1v8",
  };
  static struct regulator_consumer_supply usb3v1 = {
   .supply = "usb3v1",
  };


  if (twl_has_regulator()) {

   struct regulator_init_data usb_fixed = {
    .constraints.valid_modes_mask =
     REGULATOR_MODE_NORMAL
     | REGULATOR_MODE_STANDBY,
    .constraints.valid_ops_mask =
     REGULATOR_CHANGE_MODE
     | REGULATOR_CHANGE_STATUS,
   };

   child = add_regulator_linked(TWL4030_REG_VUSB1V5,
            &usb_fixed, &usb1v5, 1);
   if (IS_ERR(child))
    return PTR_ERR(child);

   child = add_regulator_linked(TWL4030_REG_VUSB1V8,
            &usb_fixed, &usb1v8, 1);
   if (IS_ERR(child))
    return PTR_ERR(child);

   child = add_regulator_linked(TWL4030_REG_VUSB3V1,
            &usb_fixed, &usb3v1, 1);
   if (IS_ERR(child))
    return PTR_ERR(child);

  }

  child = add_child(0, "twl4030_usb",
    pdata->usb, sizeof(*pdata->usb),
    1,

    pdata->irq_base + 8 + 2, pdata->irq_base + 4);

  if (IS_ERR(child))
   return PTR_ERR(child);


  if (twl_has_regulator() && child) {
   usb1v5.dev = child;
   usb1v8.dev = child;
   usb3v1.dev = child;
  }
 }

 if (twl_has_watchdog()) {
  child = add_child(0, "twl4030_wdt", ((void*)0), 0, 0, 0, 0);
  if (IS_ERR(child))
   return PTR_ERR(child);
 }

 if (twl_has_pwrbutton()) {
  child = add_child(1, "twl4030_pwrbutton",
    ((void*)0), 0, 1, pdata->irq_base + 8 + 0, 0);
  if (IS_ERR(child))
   return PTR_ERR(child);
 }

 if (twl_has_regulator()) {






  child = add_regulator(TWL4030_REG_VMMC1, pdata->vmmc1);
  if (IS_ERR(child))
   return PTR_ERR(child);

  child = add_regulator(TWL4030_REG_VDAC, pdata->vdac);
  if (IS_ERR(child))
   return PTR_ERR(child);

  child = add_regulator((features & TWL4030_VAUX2)
     ? TWL4030_REG_VAUX2_4030
     : TWL4030_REG_VAUX2,
    pdata->vaux2);
  if (IS_ERR(child))
   return PTR_ERR(child);
 }


 if (twl_has_regulator() && !(features & TPS_SUBSET)) {
  child = add_regulator(TWL4030_REG_VPLL2, pdata->vpll2);
  if (IS_ERR(child))
   return PTR_ERR(child);

  child = add_regulator(TWL4030_REG_VMMC2, pdata->vmmc2);
  if (IS_ERR(child))
   return PTR_ERR(child);

  child = add_regulator(TWL4030_REG_VSIM, pdata->vsim);
  if (IS_ERR(child))
   return PTR_ERR(child);

  child = add_regulator(TWL4030_REG_VAUX1, pdata->vaux1);
  if (IS_ERR(child))
   return PTR_ERR(child);

  child = add_regulator(TWL4030_REG_VAUX3, pdata->vaux3);
  if (IS_ERR(child))
   return PTR_ERR(child);

  child = add_regulator(TWL4030_REG_VAUX4, pdata->vaux4);
  if (IS_ERR(child))
   return PTR_ERR(child);
 }

 return 0;
}
