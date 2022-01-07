
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtip_port {void* ic_pause_timer; int flags; TYPE_1__* dd; scalar_t__ mmio; struct host_to_dev_fis* rxfis; } ;
struct host_to_dev_fis {int command; int features; } ;
struct TYPE_2__ {int dd_flag; } ;


 int ATA_CMD_DOWNLOAD_MICRO ;
 int ATA_CMD_SEC_ERASE_PREP ;
 int ATA_CMD_SEC_ERASE_UNIT ;
 int MTIP_DDF_SEC_LOCK_BIT ;
 int MTIP_PF_DM_ACTIVE_BIT ;
 int MTIP_PF_SE_ACTIVE_BIT ;
 scalar_t__ PORT_TFDATA ;
 int RX_FIS_D2H_REG ;
 int clear_bit (int ,int *) ;
 void* jiffies ;
 int mtip_restart_port (struct mtip_port*) ;
 unsigned long readl (scalar_t__) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static bool mtip_pause_ncq(struct mtip_port *port,
    struct host_to_dev_fis *fis)
{
 struct host_to_dev_fis *reply;
 unsigned long task_file_data;

 reply = port->rxfis + RX_FIS_D2H_REG;
 task_file_data = readl(port->mmio+PORT_TFDATA);

 if (fis->command == ATA_CMD_SEC_ERASE_UNIT)
  clear_bit(MTIP_DDF_SEC_LOCK_BIT, &port->dd->dd_flag);

 if ((task_file_data & 1))
  return 0;

 if (fis->command == ATA_CMD_SEC_ERASE_PREP) {
  set_bit(MTIP_PF_SE_ACTIVE_BIT, &port->flags);
  set_bit(MTIP_DDF_SEC_LOCK_BIT, &port->dd->dd_flag);
  port->ic_pause_timer = jiffies;
  return 1;
 } else if ((fis->command == ATA_CMD_DOWNLOAD_MICRO) &&
     (fis->features == 0x03)) {
  set_bit(MTIP_PF_DM_ACTIVE_BIT, &port->flags);
  port->ic_pause_timer = jiffies;
  return 1;
 } else if ((fis->command == ATA_CMD_SEC_ERASE_UNIT) ||
  ((fis->command == 0xFC) &&
   (fis->features == 0x27 || fis->features == 0x72 ||
    fis->features == 0x62 || fis->features == 0x26))) {

  mtip_restart_port(port);
  return 0;
 }

 return 0;
}
