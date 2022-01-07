
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct mg_drv_data* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct mg_host {scalar_t__ dev_base; } ;
struct mg_drv_data {int use_polling; struct mg_host* host; } ;


 int EIO ;
 int MG_CMD_WAKEUP ;
 scalar_t__ MG_REG_COMMAND ;
 scalar_t__ MG_REG_DRV_CTRL ;
 int MG_STAT_READY ;
 int MG_TMAX_CONF_TO_CMD ;
 scalar_t__ mg_wait (struct mg_host*,int ,int ) ;
 int msleep (int) ;
 int outb (int ,scalar_t__) ;

__attribute__((used)) static int mg_resume(struct platform_device *plat_dev)
{
 struct mg_drv_data *prv_data = plat_dev->dev.platform_data;
 struct mg_host *host = prv_data->host;

 if (mg_wait(host, MG_STAT_READY, MG_TMAX_CONF_TO_CMD))
  return -EIO;

 outb(MG_CMD_WAKEUP, (unsigned long)host->dev_base + MG_REG_COMMAND);

 msleep(1);

 if (mg_wait(host, MG_STAT_READY, MG_TMAX_CONF_TO_CMD))
  return -EIO;

 if (!prv_data->use_polling)
  outb(0, (unsigned long)host->dev_base + MG_REG_DRV_CTRL);

 return 0;
}
