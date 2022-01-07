
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int shost; } ;
struct sas_ha_struct {int lock; TYPE_3__ core; int eh_dev_q; int eh_active; } ;
struct TYPE_6__ {int reset_lun; int eh_list_node; } ;
struct domain_device {TYPE_4__* rphy; TYPE_2__ ssp_dev; int state; TYPE_1__* port; } ;
struct TYPE_8__ {int dev; } ;
struct TYPE_5__ {struct sas_ha_struct* ha; } ;


 int FAILED ;
 int SAS_DEV_EH_PENDING ;
 int SAS_DEV_LU_RESET ;
 int SAS_DPRINTK (char*,char*,int ) ;
 int SUCCESS ;
 scalar_t__ dev_is_sata (struct domain_device*) ;
 int dev_name (int *) ;
 int int_to_scsilun (int,int *) ;
 int list_add_tail (int *,int *) ;
 int sas_ata_schedule_reset (struct domain_device*) ;
 int sas_ata_wait_eh (struct domain_device*) ;
 int sas_wait_eh (struct domain_device*) ;
 int scsi_schedule_eh (int ) ;
 int set_bit (int,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int test_bit (int,int *) ;

__attribute__((used)) static int sas_queue_reset(struct domain_device *dev, int reset_type, int lun, int wait)
{
 struct sas_ha_struct *ha = dev->port->ha;
 int scheduled = 0, tries = 100;


 if (dev_is_sata(dev)) {
  sas_ata_schedule_reset(dev);
  if (wait)
   sas_ata_wait_eh(dev);
  return SUCCESS;
 }

 while (!scheduled && tries--) {
  spin_lock_irq(&ha->lock);
  if (!test_bit(SAS_DEV_EH_PENDING, &dev->state) &&
      !test_bit(reset_type, &dev->state)) {
   scheduled = 1;
   ha->eh_active++;
   list_add_tail(&dev->ssp_dev.eh_list_node, &ha->eh_dev_q);
   set_bit(SAS_DEV_EH_PENDING, &dev->state);
   set_bit(reset_type, &dev->state);
   int_to_scsilun(lun, &dev->ssp_dev.reset_lun);
   scsi_schedule_eh(ha->core.shost);
  }
  spin_unlock_irq(&ha->lock);

  if (wait)
   sas_wait_eh(dev);

  if (scheduled)
   return SUCCESS;
 }

 SAS_DPRINTK("%s reset of %s failed\n",
      reset_type == SAS_DEV_LU_RESET ? "LUN" : "Bus",
      dev_name(&dev->rphy->dev));

 return FAILED;
}
