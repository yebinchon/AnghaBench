
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_cmnd {TYPE_2__* device; } ;
struct esp {TYPE_1__* host; struct completion* eh_reset; int flags; } ;
struct completion {int dummy; } ;
struct TYPE_4__ {int host; } ;
struct TYPE_3__ {int host_lock; } ;


 int ESP_CMD_RS ;
 int ESP_FLAG_RESETTING ;
 int FAILED ;
 int HZ ;
 int SUCCESS ;
 int esp_bus_reset_settle ;
 int init_completion (struct completion*) ;
 int scsi_esp_cmd (struct esp*,int ) ;
 struct esp* shost_priv (int ) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int ssleep (int ) ;
 int wait_for_completion_timeout (struct completion*,int) ;

__attribute__((used)) static int esp_eh_bus_reset_handler(struct scsi_cmnd *cmd)
{
 struct esp *esp = shost_priv(cmd->device->host);
 struct completion eh_reset;
 unsigned long flags;

 init_completion(&eh_reset);

 spin_lock_irqsave(esp->host->host_lock, flags);

 esp->eh_reset = &eh_reset;






 esp->flags |= ESP_FLAG_RESETTING;
 scsi_esp_cmd(esp, ESP_CMD_RS);

 spin_unlock_irqrestore(esp->host->host_lock, flags);

 ssleep(esp_bus_reset_settle);

 if (!wait_for_completion_timeout(&eh_reset, 5 * HZ)) {
  spin_lock_irqsave(esp->host->host_lock, flags);
  esp->eh_reset = ((void*)0);
  spin_unlock_irqrestore(esp->host->host_lock, flags);

  return FAILED;
 }

 return SUCCESS;
}
