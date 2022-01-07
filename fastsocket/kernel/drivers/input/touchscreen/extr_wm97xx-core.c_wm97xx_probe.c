
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_10__ ;


struct wm97xx_pdata {int dummy; } ;
struct wm97xx {int id; TYPE_10__* input_dev; TYPE_6__* battery_dev; TYPE_6__* touch_dev; void** gpio; TYPE_3__* codec; struct device* dev; int variant; int ac97; int codec_mutex; } ;
struct device {struct wm97xx_pdata* platform_data; } ;
struct TYPE_18__ {struct wm97xx_pdata* platform_data; struct device* parent; } ;
struct TYPE_20__ {TYPE_2__ dev; } ;
struct TYPE_19__ {int (* phy_init ) (struct wm97xx*) ;} ;
struct TYPE_17__ {struct device* parent; } ;
struct TYPE_16__ {char* name; char* phys; TYPE_1__ dev; int keybit; int evbit; int close; int open; } ;


 int ABS_PRESSURE ;
 int ABS_X ;
 int ABS_Y ;
 int AC97_GPIO_CFG ;
 int AC97_GPIO_POLARITY ;
 int AC97_GPIO_STATUS ;
 int AC97_GPIO_STICKY ;
 int AC97_GPIO_WAKEUP ;
 int AC97_MISC_AFE ;
 int AC97_VENDOR_ID1 ;
 int AC97_VENDOR_ID2 ;
 int BTN_TOUCH ;
 int ENODEV ;
 int ENOMEM ;
 int EV_ABS ;
 int EV_KEY ;
 int GFP_KERNEL ;
 int WM97XX_ID1 ;
 int WM97xx_GENERIC ;
 int __set_bit (int ,int ) ;
 int * abs_p ;
 int * abs_x ;
 int * abs_y ;
 int dev_err (struct device*,char*,int) ;
 int dev_info (struct device*,char*,int) ;
 int dev_set_drvdata (struct device*,struct wm97xx*) ;
 TYPE_10__* input_allocate_device () ;
 int input_free_device (TYPE_10__*) ;
 int input_register_device (TYPE_10__*) ;
 int input_set_abs_params (TYPE_10__*,int ,int ,int ,int ,int ) ;
 int input_set_drvdata (TYPE_10__*,struct wm97xx*) ;
 int input_unregister_device (TYPE_10__*) ;
 int kfree (struct wm97xx*) ;
 struct wm97xx* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int platform_device_add (TYPE_6__*) ;
 void* platform_device_alloc (char*,int) ;
 int platform_device_put (TYPE_6__*) ;
 int platform_device_unregister (TYPE_6__*) ;
 int platform_set_drvdata (TYPE_6__*,struct wm97xx*) ;
 int stub1 (struct wm97xx*) ;
 int to_ac97_t (struct device*) ;
 TYPE_3__ wm9705_codec ;
 TYPE_3__ wm9712_codec ;
 TYPE_3__ wm9713_codec ;
 void* wm97xx_reg_read (struct wm97xx*,int ) ;
 int wm97xx_ts_input_close ;
 int wm97xx_ts_input_open ;

__attribute__((used)) static int wm97xx_probe(struct device *dev)
{
 struct wm97xx *wm;
 struct wm97xx_pdata *pdata = dev->platform_data;
 int ret = 0, id = 0;

 wm = kzalloc(sizeof(struct wm97xx), GFP_KERNEL);
 if (!wm)
  return -ENOMEM;
 mutex_init(&wm->codec_mutex);

 wm->dev = dev;
 dev_set_drvdata(dev, wm);
 wm->ac97 = to_ac97_t(dev);


 id = wm97xx_reg_read(wm, AC97_VENDOR_ID1);
 if (id != WM97XX_ID1) {
  dev_err(dev, "Device with vendor %04x is not a wm97xx\n", id);
  ret = -ENODEV;
  goto alloc_err;
 }

 wm->id = wm97xx_reg_read(wm, AC97_VENDOR_ID2);

 wm->variant = WM97xx_GENERIC;

 dev_info(wm->dev, "detected a wm97%02x codec\n", wm->id & 0xff);

 switch (wm->id & 0xff) {
 default:
  dev_err(wm->dev, "Support for wm97%02x not compiled in.\n",
   wm->id & 0xff);
  ret = -ENODEV;
  goto alloc_err;
 }


 wm->codec->phy_init(wm);


 wm->gpio[0] = wm97xx_reg_read(wm, AC97_GPIO_CFG);
 wm->gpio[1] = wm97xx_reg_read(wm, AC97_GPIO_POLARITY);
 wm->gpio[2] = wm97xx_reg_read(wm, AC97_GPIO_STICKY);
 wm->gpio[3] = wm97xx_reg_read(wm, AC97_GPIO_WAKEUP);
 wm->gpio[4] = wm97xx_reg_read(wm, AC97_GPIO_STATUS);
 wm->gpio[5] = wm97xx_reg_read(wm, AC97_MISC_AFE);

 wm->input_dev = input_allocate_device();
 if (wm->input_dev == ((void*)0)) {
  ret = -ENOMEM;
  goto alloc_err;
 }


 wm->input_dev->name = "wm97xx touchscreen";
 wm->input_dev->phys = "wm97xx";
 wm->input_dev->open = wm97xx_ts_input_open;
 wm->input_dev->close = wm97xx_ts_input_close;

 __set_bit(EV_ABS, wm->input_dev->evbit);
 __set_bit(EV_KEY, wm->input_dev->evbit);
 __set_bit(BTN_TOUCH, wm->input_dev->keybit);

 input_set_abs_params(wm->input_dev, ABS_X, abs_x[0], abs_x[1],
        abs_x[2], 0);
 input_set_abs_params(wm->input_dev, ABS_Y, abs_y[0], abs_y[1],
        abs_y[2], 0);
 input_set_abs_params(wm->input_dev, ABS_PRESSURE, abs_p[0], abs_p[1],
        abs_p[2], 0);

 input_set_drvdata(wm->input_dev, wm);
 wm->input_dev->dev.parent = dev;

 ret = input_register_device(wm->input_dev);
 if (ret < 0)
  goto dev_alloc_err;


 wm->battery_dev = platform_device_alloc("wm97xx-battery", -1);
 if (!wm->battery_dev) {
  ret = -ENOMEM;
  goto batt_err;
 }
 platform_set_drvdata(wm->battery_dev, wm);
 wm->battery_dev->dev.parent = dev;
 wm->battery_dev->dev.platform_data = pdata;
 ret = platform_device_add(wm->battery_dev);
 if (ret < 0)
  goto batt_reg_err;



 wm->touch_dev = platform_device_alloc("wm97xx-touch", -1);
 if (!wm->touch_dev) {
  ret = -ENOMEM;
  goto touch_err;
 }
 platform_set_drvdata(wm->touch_dev, wm);
 wm->touch_dev->dev.parent = dev;
 wm->touch_dev->dev.platform_data = pdata;
 ret = platform_device_add(wm->touch_dev);
 if (ret < 0)
  goto touch_reg_err;

 return ret;

 touch_reg_err:
 platform_device_put(wm->touch_dev);
 touch_err:
 platform_device_unregister(wm->battery_dev);
 wm->battery_dev = ((void*)0);
 batt_reg_err:
 platform_device_put(wm->battery_dev);
 batt_err:
 input_unregister_device(wm->input_dev);
 wm->input_dev = ((void*)0);
 dev_alloc_err:
 input_free_device(wm->input_dev);
 alloc_err:
 kfree(wm);

 return ret;
}
