
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sas_ha_struct {int drain_mutex; int lock; int state; } ;


 int SAS_HA_REGISTERED ;
 int __sas_drain_work (struct sas_ha_struct*) ;
 int clear_bit (int ,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void sas_disable_events(struct sas_ha_struct *sas_ha)
{



 mutex_lock(&sas_ha->drain_mutex);
 spin_lock_irq(&sas_ha->lock);
 clear_bit(SAS_HA_REGISTERED, &sas_ha->state);
 spin_unlock_irq(&sas_ha->lock);
 __sas_drain_work(sas_ha);
 mutex_unlock(&sas_ha->drain_mutex);
}
