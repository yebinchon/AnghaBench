
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u8 ;
struct mg_host {unsigned int error; void (* mg_do_intr ) (struct mg_host*) ;scalar_t__ dev_base; int timer; TYPE_1__* dev; } ;
struct mg_drv_data {int use_polling; } ;
struct TYPE_2__ {struct mg_drv_data* platform_data; } ;


 unsigned int ATA_DEVICE_OBS ;
 unsigned int ATA_LBA ;
 int HZ ;
 unsigned int MG_ERR_NONE ;
 scalar_t__ MG_REG_COMMAND ;
 scalar_t__ MG_REG_CYL_HIGH ;
 scalar_t__ MG_REG_CYL_LOW ;
 scalar_t__ MG_REG_DRV_HEAD ;
 scalar_t__ MG_REG_SECT_CNT ;
 scalar_t__ MG_REG_SECT_NUM ;
 scalar_t__ MG_RES_SEC ;
 int MG_STAT_READY ;
 int MG_TMAX_CONF_TO_CMD ;
 scalar_t__ jiffies ;
 scalar_t__ mg_wait (struct mg_host*,int ,int ) ;
 int mod_timer (int *,scalar_t__) ;
 int outb (unsigned int,scalar_t__) ;

__attribute__((used)) static unsigned int mg_out(struct mg_host *host,
  unsigned int sect_num,
  unsigned int sect_cnt,
  unsigned int cmd,
  void (*intr_addr)(struct mg_host *))
{
 struct mg_drv_data *prv_data = host->dev->platform_data;

 if (mg_wait(host, MG_STAT_READY, MG_TMAX_CONF_TO_CMD))
  return host->error;

 if (!prv_data->use_polling) {
  host->mg_do_intr = intr_addr;
  mod_timer(&host->timer, jiffies + 3 * HZ);
 }
 if (MG_RES_SEC)
  sect_num += MG_RES_SEC;
 outb((u8)sect_cnt, (unsigned long)host->dev_base + MG_REG_SECT_CNT);
 outb((u8)sect_num, (unsigned long)host->dev_base + MG_REG_SECT_NUM);
 outb((u8)(sect_num >> 8), (unsigned long)host->dev_base +
   MG_REG_CYL_LOW);
 outb((u8)(sect_num >> 16), (unsigned long)host->dev_base +
   MG_REG_CYL_HIGH);
 outb((u8)((sect_num >> 24) | ATA_LBA | ATA_DEVICE_OBS),
   (unsigned long)host->dev_base + MG_REG_DRV_HEAD);
 outb(cmd, (unsigned long)host->dev_base + MG_REG_COMMAND);
 return MG_ERR_NONE;
}
