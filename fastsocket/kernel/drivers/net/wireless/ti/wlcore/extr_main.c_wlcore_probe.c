
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1271 {int nvs_loading_complete; struct platform_device* pdev; int * dev; int ptable; int ops; } ;
struct platform_device {int dev; } ;


 int EINVAL ;
 int FW_ACTION_HOTPLUG ;
 int GFP_KERNEL ;
 int THIS_MODULE ;
 int WL12XX_NVS_NAME ;
 int complete_all (int *) ;
 int platform_set_drvdata (struct platform_device*,struct wl1271*) ;
 int request_firmware_nowait (int ,int ,int ,int *,int ,struct wl1271*,int ) ;
 int wl1271_error (char*,int) ;
 int wlcore_nvs_cb ;

int wlcore_probe(struct wl1271 *wl, struct platform_device *pdev)
{
 int ret;

 if (!wl->ops || !wl->ptable)
  return -EINVAL;

 wl->dev = &pdev->dev;
 wl->pdev = pdev;
 platform_set_drvdata(pdev, wl);

 ret = request_firmware_nowait(THIS_MODULE, FW_ACTION_HOTPLUG,
          WL12XX_NVS_NAME, &pdev->dev, GFP_KERNEL,
          wl, wlcore_nvs_cb);
 if (ret < 0) {
  wl1271_error("request_firmware_nowait failed: %d", ret);
  complete_all(&wl->nvs_loading_complete);
 }

 return ret;
}
