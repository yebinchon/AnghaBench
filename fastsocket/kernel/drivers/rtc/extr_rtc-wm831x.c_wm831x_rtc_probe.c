
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct wm831x_rtc {int alarm_enabled; int rtc; struct wm831x* wm831x; } ;
struct wm831x {int dummy; } ;
struct TYPE_4__ {int parent; } ;
struct platform_device {TYPE_1__ dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_TRIGGER_RISING ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int THIS_MODULE ;
 int WM831X_RTC_ALM_ENA ;
 int WM831X_RTC_CONTROL ;
 int dev_err (TYPE_1__*,char*,int,...) ;
 struct wm831x* dev_get_drvdata (int ) ;
 int device_init_wakeup (TYPE_1__*,int) ;
 int kfree (struct wm831x_rtc*) ;
 struct wm831x_rtc* kzalloc (int,int ) ;
 int platform_get_irq_byname (struct platform_device*,char*) ;
 int platform_set_drvdata (struct platform_device*,struct wm831x_rtc*) ;
 int rtc_device_register (char*,TYPE_1__*,int *,int ) ;
 int wm831x_alm_irq ;
 int wm831x_per_irq ;
 int wm831x_reg_read (struct wm831x*,int ) ;
 int wm831x_request_irq (struct wm831x*,int,int ,int ,char*,struct wm831x_rtc*) ;
 int wm831x_rtc_ops ;

__attribute__((used)) static int wm831x_rtc_probe(struct platform_device *pdev)
{
 struct wm831x *wm831x = dev_get_drvdata(pdev->dev.parent);
 struct wm831x_rtc *wm831x_rtc;
 int per_irq = platform_get_irq_byname(pdev, "PER");
 int alm_irq = platform_get_irq_byname(pdev, "ALM");
 int ret = 0;

 wm831x_rtc = kzalloc(sizeof(*wm831x_rtc), GFP_KERNEL);
 if (wm831x_rtc == ((void*)0))
  return -ENOMEM;

 platform_set_drvdata(pdev, wm831x_rtc);
 wm831x_rtc->wm831x = wm831x;

 ret = wm831x_reg_read(wm831x, WM831X_RTC_CONTROL);
 if (ret < 0) {
  dev_err(&pdev->dev, "Failed to read RTC control: %d\n", ret);
  goto err;
 }
 if (ret & WM831X_RTC_ALM_ENA)
  wm831x_rtc->alarm_enabled = 1;

 device_init_wakeup(&pdev->dev, 1);

 wm831x_rtc->rtc = rtc_device_register("wm831x", &pdev->dev,
           &wm831x_rtc_ops, THIS_MODULE);
 if (IS_ERR(wm831x_rtc->rtc)) {
  ret = PTR_ERR(wm831x_rtc->rtc);
  goto err;
 }

 ret = wm831x_request_irq(wm831x, per_irq, wm831x_per_irq,
     IRQF_TRIGGER_RISING, "wm831x_rtc_per",
     wm831x_rtc);
 if (ret != 0) {
  dev_err(&pdev->dev, "Failed to request periodic IRQ %d: %d\n",
   per_irq, ret);
 }

 ret = wm831x_request_irq(wm831x, alm_irq, wm831x_alm_irq,
     IRQF_TRIGGER_RISING, "wm831x_rtc_alm",
     wm831x_rtc);
 if (ret != 0) {
  dev_err(&pdev->dev, "Failed to request alarm IRQ %d: %d\n",
   alm_irq, ret);
 }

 return 0;

err:
 kfree(wm831x_rtc);
 return ret;
}
