
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct wm831x_pdata {int (* pre_init ) (struct wm831x*) ;int (* post_init ) (struct wm831x*) ;scalar_t__ backlight; } ;
struct wm831x {int locked; TYPE_1__* dev; int auxadc_lock; int key_lock; int io_lock; } ;
typedef enum wm831x_parent { ____Placeholder_wm831x_parent } wm831x_parent ;
struct TYPE_7__ {struct wm831x_pdata* platform_data; } ;


 int ARRAY_SIZE (int ) ;
 int BUG () ;
 int EINVAL ;



 int WM831X_PARENT_ID ;
 int WM831X_PARENT_REV_MASK ;
 int WM831X_PARENT_REV_SHIFT ;
 int WM831X_RESET_ID ;
 int WM831X_REVISION ;
 int WM831X_SECURITY_KEY ;
 int backlight_devs ;
 int dev_err (TYPE_1__*,char*,...) ;
 int dev_info (TYPE_1__*,char*,int,...) ;
 int dev_set_drvdata (TYPE_1__*,struct wm831x*) ;
 int dev_warn (TYPE_1__*,char*,int) ;
 int kfree (struct wm831x*) ;
 int mfd_add_devices (TYPE_1__*,int,int ,int ,int *,int ) ;
 int mfd_remove_devices (TYPE_1__*) ;
 int mutex_init (int *) ;
 int stub1 (struct wm831x*) ;
 int stub2 (struct wm831x*) ;
 int wm8310_devs ;
 int wm8311_devs ;
 int wm8312_devs ;
 int wm831x_irq_exit (struct wm831x*) ;
 int wm831x_irq_init (struct wm831x*,int) ;
 int wm831x_otp_init (struct wm831x*) ;
 int wm831x_reg_read (struct wm831x*,int ) ;
 int wm831x_reg_write (struct wm831x*,int ,int ) ;

__attribute__((used)) static int wm831x_device_init(struct wm831x *wm831x, unsigned long id, int irq)
{
 struct wm831x_pdata *pdata = wm831x->dev->platform_data;
 int rev;
 enum wm831x_parent parent;
 int ret;

 mutex_init(&wm831x->io_lock);
 mutex_init(&wm831x->key_lock);
 mutex_init(&wm831x->auxadc_lock);
 dev_set_drvdata(wm831x->dev, wm831x);

 ret = wm831x_reg_read(wm831x, WM831X_PARENT_ID);
 if (ret < 0) {
  dev_err(wm831x->dev, "Failed to read parent ID: %d\n", ret);
  goto err;
 }
 if (ret != 0x6204) {
  dev_err(wm831x->dev, "Device is not a WM831x: ID %x\n", ret);
  ret = -EINVAL;
  goto err;
 }

 ret = wm831x_reg_read(wm831x, WM831X_REVISION);
 if (ret < 0) {
  dev_err(wm831x->dev, "Failed to read revision: %d\n", ret);
  goto err;
 }
 rev = (ret & WM831X_PARENT_REV_MASK) >> WM831X_PARENT_REV_SHIFT;

 ret = wm831x_reg_read(wm831x, WM831X_RESET_ID);
 if (ret < 0) {
  dev_err(wm831x->dev, "Failed to read device ID: %d\n", ret);
  goto err;
 }

 switch (ret) {
 case 0x8310:
  parent = 130;
  switch (rev) {
  case 0:
   dev_info(wm831x->dev, "WM8310 revision %c\n",
     'A' + rev);
   break;
  }
  break;

 case 0x8311:
  parent = 129;
  switch (rev) {
  case 0:
   dev_info(wm831x->dev, "WM8311 revision %c\n",
     'A' + rev);
   break;
  }
  break;

 case 0x8312:
  parent = 128;
  switch (rev) {
  case 0:
   dev_info(wm831x->dev, "WM8312 revision %c\n",
     'A' + rev);
   break;
  }
  break;

 case 0:





  parent = id;
  switch (rev) {
  case 0:
   dev_info(wm831x->dev, "WM831%d ES revision %c\n",
     parent, 'A' + rev);
   break;
  }
  break;

 default:
  dev_err(wm831x->dev, "Unknown WM831x device %04x\n", ret);
  ret = -EINVAL;
  goto err;
 }




 if (parent != id)
  dev_warn(wm831x->dev, "Device was registered as a WM831%lu\n",
    id);


 ret = wm831x_reg_read(wm831x, WM831X_SECURITY_KEY);
 if (ret < 0) {
  dev_err(wm831x->dev, "Failed to read security key: %d\n", ret);
  goto err;
 }
 if (ret != 0) {
  dev_warn(wm831x->dev, "Security key had non-zero value %x\n",
    ret);
  wm831x_reg_write(wm831x, WM831X_SECURITY_KEY, 0);
 }
 wm831x->locked = 1;

 if (pdata && pdata->pre_init) {
  ret = pdata->pre_init(wm831x);
  if (ret != 0) {
   dev_err(wm831x->dev, "pre_init() failed: %d\n", ret);
   goto err;
  }
 }

 ret = wm831x_irq_init(wm831x, irq);
 if (ret != 0)
  goto err;


 switch (parent) {
 case 130:
  ret = mfd_add_devices(wm831x->dev, -1,
          wm8310_devs, ARRAY_SIZE(wm8310_devs),
          ((void*)0), 0);
  break;

 case 129:
  ret = mfd_add_devices(wm831x->dev, -1,
          wm8311_devs, ARRAY_SIZE(wm8311_devs),
          ((void*)0), 0);
  break;

 case 128:
  ret = mfd_add_devices(wm831x->dev, -1,
          wm8312_devs, ARRAY_SIZE(wm8312_devs),
          ((void*)0), 0);
  break;

 default:

  BUG();
 }

 if (ret != 0) {
  dev_err(wm831x->dev, "Failed to add children\n");
  goto err_irq;
 }

 if (pdata && pdata->backlight) {

  ret = mfd_add_devices(wm831x->dev, -1, backlight_devs,
          ARRAY_SIZE(backlight_devs), ((void*)0), 0);
  if (ret < 0)
   dev_err(wm831x->dev, "Failed to add backlight: %d\n",
    ret);
 }

 wm831x_otp_init(wm831x);

 if (pdata && pdata->post_init) {
  ret = pdata->post_init(wm831x);
  if (ret != 0) {
   dev_err(wm831x->dev, "post_init() failed: %d\n", ret);
   goto err_irq;
  }
 }

 return 0;

err_irq:
 wm831x_irq_exit(wm831x);
err:
 mfd_remove_devices(wm831x->dev);
 kfree(wm831x);
 return ret;
}
