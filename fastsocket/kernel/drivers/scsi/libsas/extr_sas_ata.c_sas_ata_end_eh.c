
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sas_ha_struct {int lock; int eh_active; } ;
struct domain_device {int state; TYPE_1__* port; } ;
struct ata_port {struct domain_device* private_data; } ;
struct TYPE_2__ {struct sas_ha_struct* ha; } ;


 int SAS_DEV_EH_PENDING ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

void sas_ata_end_eh(struct ata_port *ap)
{
 struct domain_device *dev = ap->private_data;
 struct sas_ha_struct *ha = dev->port->ha;
 unsigned long flags;

 spin_lock_irqsave(&ha->lock, flags);
 if (test_and_clear_bit(SAS_DEV_EH_PENDING, &dev->state))
  ha->eh_active--;
 spin_unlock_irqrestore(&ha->lock, flags);
}
