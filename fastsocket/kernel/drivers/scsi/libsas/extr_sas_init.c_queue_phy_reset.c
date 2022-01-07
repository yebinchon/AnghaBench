
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sas_phy_data {int reset_result; int hard_reset; int event_lock; int reset_work; } ;
struct TYPE_2__ {int parent; } ;
struct sas_phy {struct sas_phy_data* hostdata; TYPE_1__ dev; } ;
struct sas_ha_struct {int lock; } ;
struct Scsi_Host {int dummy; } ;


 int ENOMEM ;
 struct sas_ha_struct* SHOST_TO_SAS_HA (struct Scsi_Host*) ;
 struct Scsi_Host* dev_to_shost (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sas_drain_work (struct sas_ha_struct*) ;
 int sas_queue_work (struct sas_ha_struct*,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int queue_phy_reset(struct sas_phy *phy, int hard_reset)
{
 struct Scsi_Host *shost = dev_to_shost(phy->dev.parent);
 struct sas_ha_struct *ha = SHOST_TO_SAS_HA(shost);
 struct sas_phy_data *d = phy->hostdata;
 int rc;

 if (!d)
  return -ENOMEM;


 mutex_lock(&d->event_lock);
 d->reset_result = 0;
 d->hard_reset = hard_reset;

 spin_lock_irq(&ha->lock);
 sas_queue_work(ha, &d->reset_work);
 spin_unlock_irq(&ha->lock);

 rc = sas_drain_work(ha);
 if (rc == 0)
  rc = d->reset_result;
 mutex_unlock(&d->event_lock);

 return rc;
}
