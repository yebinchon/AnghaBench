
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ipr_sata_port {struct ipr_ioa_cfg* ioa_cfg; struct ipr_resource_entry* res; } ;
struct ipr_resource_entry {void* ata_class; } ;
struct ipr_ioa_cfg {TYPE_4__* host; TYPE_1__* hrrq; scalar_t__ in_reset_reload; int reset_wait_q; } ;
struct TYPE_7__ {TYPE_2__* device; } ;
struct ata_port {TYPE_3__ link; struct ipr_sata_port* private_data; } ;
struct TYPE_8__ {int host_lock; } ;
struct TYPE_6__ {void* class; } ;
struct TYPE_5__ {int allow_cmds; } ;


 void* ATA_DEV_NONE ;
 void* ATA_DEV_UNKNOWN ;
 int ENTER ;
 size_t IPR_INIT_HRRQ ;
 int LEAVE ;
 int ipr_device_reset (struct ipr_ioa_cfg*,struct ipr_resource_entry*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int wait_event (int ,int) ;

__attribute__((used)) static void ipr_ata_phy_reset(struct ata_port *ap)
{
 unsigned long flags;
 struct ipr_sata_port *sata_port = ap->private_data;
 struct ipr_resource_entry *res = sata_port->res;
 struct ipr_ioa_cfg *ioa_cfg = sata_port->ioa_cfg;
 int rc;

 ENTER;
 spin_lock_irqsave(ioa_cfg->host->host_lock, flags);
 while(ioa_cfg->in_reset_reload) {
  spin_unlock_irqrestore(ioa_cfg->host->host_lock, flags);
  wait_event(ioa_cfg->reset_wait_q, !ioa_cfg->in_reset_reload);
  spin_lock_irqsave(ioa_cfg->host->host_lock, flags);
 }

 if (!ioa_cfg->hrrq[IPR_INIT_HRRQ].allow_cmds)
  goto out_unlock;

 rc = ipr_device_reset(ioa_cfg, res);

 if (rc) {
  ap->link.device[0].class = ATA_DEV_NONE;
  goto out_unlock;
 }

 ap->link.device[0].class = res->ata_class;
 if (ap->link.device[0].class == ATA_DEV_UNKNOWN)
  ap->link.device[0].class = ATA_DEV_NONE;

out_unlock:
 spin_unlock_irqrestore(ioa_cfg->host->host_lock, flags);
 LEAVE;
}
