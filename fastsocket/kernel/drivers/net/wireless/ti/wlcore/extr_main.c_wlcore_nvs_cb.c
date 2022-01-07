
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct wlcore_platdev_data {int if_ops; struct wl12xx_platform_data* pdata; } ;
struct wl12xx_platform_data {int platform_quirks; scalar_t__ pwr_in_suspend; } ;
struct wl1271 {scalar_t__ num_tx_desc; int platform_quirks; int irq_wake_enabled; int initialized; int nvs_loading_complete; int * nvs; int irq; int dev; TYPE_5__* ops; TYPE_4__* hw; int if_ops; scalar_t__ nvs_len; struct platform_device* pdev; } ;
struct TYPE_6__ {struct wlcore_platdev_data* platform_data; } ;
struct platform_device {int name; TYPE_1__ dev; } ;
struct firmware {scalar_t__ size; int data; } ;
struct TYPE_10__ {int (* setup ) (struct wl1271*) ;int (* identify_chip ) (struct wl1271*) ;} ;
struct TYPE_9__ {TYPE_3__* wiphy; } ;
struct TYPE_7__ {int pattern_min_len; int pattern_max_len; int n_patterns; int flags; } ;
struct TYPE_8__ {TYPE_2__ wowlan; } ;


 int BUG_ON (int) ;
 int DEBUG_BOOT ;
 int GFP_KERNEL ;
 unsigned long IRQF_ONESHOT ;
 unsigned long IRQF_TRIGGER_HIGH ;
 unsigned long IRQF_TRIGGER_RISING ;
 int WIPHY_WOWLAN_ANY ;
 int WL1271_MAX_RX_FILTERS ;
 int WL1271_RX_FILTER_MAX_PATTERN_SIZE ;
 int WL12XX_NVS_NAME ;
 int WL12XX_PLATFORM_QUIRK_EDGE_IRQ ;
 scalar_t__ WLCORE_MAX_TX_DESCRIPTORS ;
 int complete_all (int *) ;
 int dev_attr_bt_coex_state ;
 int dev_attr_hw_pg_ver ;
 int device_create_bin_file (int ,int *) ;
 int device_create_file (int ,int *) ;
 int device_init_wakeup (int ,int) ;
 int device_remove_file (int ,int *) ;
 int disable_irq (int ) ;
 int enable_irq_wake (int ) ;
 int free_irq (int ,struct wl1271*) ;
 int fwlog_attr ;
 int kfree (int *) ;
 int * kmemdup (int ,scalar_t__,int ) ;
 int platform_get_irq (struct platform_device*,int ) ;
 int release_firmware (struct firmware const*) ;
 int request_threaded_irq (int ,int *,int ,unsigned long,int ,struct wl1271*) ;
 int stub1 (struct wl1271*) ;
 int stub2 (struct wl1271*) ;
 int wl1271_debug (int ,char*,int ) ;
 int wl1271_error (char*,...) ;
 int wl1271_init_ieee80211 (struct wl1271*) ;
 int wl1271_register_hw (struct wl1271*) ;
 int wl1271_unregister_hw (struct wl1271*) ;
 int wl12xx_get_hw_info (struct wl1271*) ;
 int wlcore_adjust_conf (struct wl1271*) ;
 int wlcore_irq ;

__attribute__((used)) static void wlcore_nvs_cb(const struct firmware *fw, void *context)
{
 struct wl1271 *wl = context;
 struct platform_device *pdev = wl->pdev;
 struct wlcore_platdev_data *pdev_data = pdev->dev.platform_data;
 struct wl12xx_platform_data *pdata = pdev_data->pdata;
 unsigned long irqflags;
 int ret;

 if (fw) {
  wl->nvs = kmemdup(fw->data, fw->size, GFP_KERNEL);
  if (!wl->nvs) {
   wl1271_error("Could not allocate nvs data");
   goto out;
  }
  wl->nvs_len = fw->size;
 } else {
  wl1271_debug(DEBUG_BOOT, "Could not get nvs file %s",
        WL12XX_NVS_NAME);
  wl->nvs = ((void*)0);
  wl->nvs_len = 0;
 }

 ret = wl->ops->setup(wl);
 if (ret < 0)
  goto out_free_nvs;

 BUG_ON(wl->num_tx_desc > WLCORE_MAX_TX_DESCRIPTORS);


 wlcore_adjust_conf(wl);

 wl->irq = platform_get_irq(pdev, 0);
 wl->platform_quirks = pdata->platform_quirks;
 wl->if_ops = pdev_data->if_ops;

 if (wl->platform_quirks & WL12XX_PLATFORM_QUIRK_EDGE_IRQ)
  irqflags = IRQF_TRIGGER_RISING;
 else
  irqflags = IRQF_TRIGGER_HIGH | IRQF_ONESHOT;

 ret = request_threaded_irq(wl->irq, ((void*)0), wlcore_irq,
       irqflags, pdev->name, wl);
 if (ret < 0) {
  wl1271_error("request_irq() failed: %d", ret);
  goto out_free_nvs;
 }
 disable_irq(wl->irq);

 ret = wl12xx_get_hw_info(wl);
 if (ret < 0) {
  wl1271_error("couldn't get hw info");
  goto out_irq;
 }

 ret = wl->ops->identify_chip(wl);
 if (ret < 0)
  goto out_irq;

 ret = wl1271_init_ieee80211(wl);
 if (ret)
  goto out_irq;

 ret = wl1271_register_hw(wl);
 if (ret)
  goto out_irq;


 ret = device_create_file(wl->dev, &dev_attr_bt_coex_state);
 if (ret < 0) {
  wl1271_error("failed to create sysfs file bt_coex_state");
  goto out_unreg;
 }


 ret = device_create_file(wl->dev, &dev_attr_hw_pg_ver);
 if (ret < 0) {
  wl1271_error("failed to create sysfs file hw_pg_ver");
  goto out_bt_coex_state;
 }


 ret = device_create_bin_file(wl->dev, &fwlog_attr);
 if (ret < 0) {
  wl1271_error("failed to create sysfs file fwlog");
  goto out_hw_pg_ver;
 }

 wl->initialized = 1;
 goto out;

out_hw_pg_ver:
 device_remove_file(wl->dev, &dev_attr_hw_pg_ver);

out_bt_coex_state:
 device_remove_file(wl->dev, &dev_attr_bt_coex_state);

out_unreg:
 wl1271_unregister_hw(wl);

out_irq:
 free_irq(wl->irq, wl);

out_free_nvs:
 kfree(wl->nvs);

out:
 release_firmware(fw);
 complete_all(&wl->nvs_loading_complete);
}
