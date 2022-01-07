
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct mg_drv_data* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct mg_host {scalar_t__ dev_base; scalar_t__ rst; scalar_t__ rstout; int irq; int major; scalar_t__ breq; scalar_t__ gd; int timer; } ;
struct mg_drv_data {scalar_t__ dev_attr; int use_polling; struct mg_host* host; } ;


 scalar_t__ MG_BOOT_DEV ;
 int MG_DISK_NAME ;
 int blk_cleanup_queue (scalar_t__) ;
 int del_gendisk (scalar_t__) ;
 int del_timer_sync (int *) ;
 int free_irq (int ,struct mg_host*) ;
 int gpio_free (scalar_t__) ;
 int iounmap (scalar_t__) ;
 int kfree (struct mg_host*) ;
 int put_disk (scalar_t__) ;
 int unregister_blkdev (int ,int ) ;

__attribute__((used)) static int mg_remove(struct platform_device *plat_dev)
{
 struct mg_drv_data *prv_data = plat_dev->dev.platform_data;
 struct mg_host *host = prv_data->host;
 int err = 0;


 del_timer_sync(&host->timer);


 if (host->gd) {
  del_gendisk(host->gd);
  put_disk(host->gd);
 }

 if (host->breq)
  blk_cleanup_queue(host->breq);


 unregister_blkdev(host->major, MG_DISK_NAME);


 if (!prv_data->use_polling)
  free_irq(host->irq, host);


 if (prv_data->dev_attr != MG_BOOT_DEV)
  gpio_free(host->rstout);


 if (host->rst)
  gpio_free(host->rst);


 if (host->dev_base)
  iounmap(host->dev_base);


 kfree(host);

 return err;
}
