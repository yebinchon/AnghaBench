
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct wlcore_platdev_data {TYPE_5__* core; int * dev; TYPE_4__* pdata; int * if_ops; } ;
struct wl12xx_sdio_glue {TYPE_5__* core; int * dev; TYPE_4__* pdata; int * if_ops; } ;
struct sdio_func {int num; int dev; TYPE_2__* card; } ;
struct sdio_device_id {int dummy; } ;
struct resource {char* name; int flags; int start; } ;
typedef int res ;
typedef int mmc_pm_flag_t ;
struct TYPE_14__ {int * parent; } ;
struct TYPE_16__ {TYPE_3__ dev; } ;
struct TYPE_15__ {int pwr_in_suspend; int irq; } ;
struct TYPE_12__ {scalar_t__ sdio_vsn; } ;
struct TYPE_13__ {TYPE_1__ cccr; int quirks; } ;


 int ARRAY_SIZE (struct resource*) ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_IRQ ;
 scalar_t__ IS_ERR (TYPE_4__*) ;
 int MMC_PM_KEEP_POWER ;
 int MMC_QUIRK_BLKSZ_FOR_BYTE_MODE ;
 int MMC_QUIRK_LENIENT_FN0 ;
 int PLATFORM_DEVID_AUTO ;
 int PTR_ERR (TYPE_4__*) ;
 scalar_t__ SDIO_SDIO_REV_3_00 ;
 int dev_dbg (int *,char*,int) ;
 int dev_err (int *,char*,...) ;
 int kfree (struct wlcore_platdev_data*) ;
 struct wlcore_platdev_data* kzalloc (int,int ) ;
 int memset (struct resource*,int,int) ;
 int platform_device_add (TYPE_5__*) ;
 int platform_device_add_data (TYPE_5__*,struct wlcore_platdev_data*,int) ;
 int platform_device_add_resources (TYPE_5__*,struct resource*,int ) ;
 TYPE_5__* platform_device_alloc (char const*,int ) ;
 int platform_device_put (TYPE_5__*) ;
 int pm_runtime_put_noidle (int *) ;
 int sdio_get_host_pm_caps (struct sdio_func*) ;
 int sdio_ops ;
 int sdio_set_drvdata (struct sdio_func*,struct wlcore_platdev_data*) ;
 TYPE_4__* wl12xx_get_platform_data () ;

__attribute__((used)) static int wl1271_probe(struct sdio_func *func,
      const struct sdio_device_id *id)
{
 struct wlcore_platdev_data *pdev_data;
 struct wl12xx_sdio_glue *glue;
 struct resource res[1];
 mmc_pm_flag_t mmcflags;
 int ret = -ENOMEM;
 const char *chip_family;


 if (func->num != 0x02)
  return -ENODEV;

 pdev_data = kzalloc(sizeof(*pdev_data), GFP_KERNEL);
 if (!pdev_data)
  goto out;

 pdev_data->if_ops = &sdio_ops;

 glue = kzalloc(sizeof(*glue), GFP_KERNEL);
 if (!glue) {
  dev_err(&func->dev, "can't allocate glue\n");
  goto out_free_pdev_data;
 }

 glue->dev = &func->dev;


 func->card->quirks |= MMC_QUIRK_LENIENT_FN0;


 func->card->quirks |= MMC_QUIRK_BLKSZ_FOR_BYTE_MODE;

 pdev_data->pdata = wl12xx_get_platform_data();
 if (IS_ERR(pdev_data->pdata)) {
  ret = PTR_ERR(pdev_data->pdata);
  dev_err(glue->dev, "missing wlan platform data: %d\n", ret);
  goto out_free_glue;
 }


 mmcflags = sdio_get_host_pm_caps(func);
 dev_dbg(glue->dev, "sdio PM caps = 0x%x\n", mmcflags);

 if (mmcflags & MMC_PM_KEEP_POWER)
  pdev_data->pdata->pwr_in_suspend = 1;

 sdio_set_drvdata(func, glue);


 pm_runtime_put_noidle(&func->dev);







 if (func->card->cccr.sdio_vsn == SDIO_SDIO_REV_3_00)
  chip_family = "wl18xx";
 else
  chip_family = "wl12xx";

 glue->core = platform_device_alloc(chip_family, PLATFORM_DEVID_AUTO);
 if (!glue->core) {
  dev_err(glue->dev, "can't allocate platform_device");
  ret = -ENOMEM;
  goto out_free_glue;
 }

 glue->core->dev.parent = &func->dev;

 memset(res, 0x00, sizeof(res));

 res[0].start = pdev_data->pdata->irq;
 res[0].flags = IORESOURCE_IRQ;
 res[0].name = "irq";

 ret = platform_device_add_resources(glue->core, res, ARRAY_SIZE(res));
 if (ret) {
  dev_err(glue->dev, "can't add resources\n");
  goto out_dev_put;
 }

 ret = platform_device_add_data(glue->core, pdev_data,
           sizeof(*pdev_data));
 if (ret) {
  dev_err(glue->dev, "can't add platform data\n");
  goto out_dev_put;
 }

 ret = platform_device_add(glue->core);
 if (ret) {
  dev_err(glue->dev, "can't add platform device\n");
  goto out_dev_put;
 }
 return 0;

out_dev_put:
 platform_device_put(glue->core);

out_free_glue:
 kfree(glue);

out_free_pdev_data:
 kfree(pdev_data);

out:
 return ret;
}
