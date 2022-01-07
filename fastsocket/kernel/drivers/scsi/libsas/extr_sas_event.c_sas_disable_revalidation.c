
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sas_ha_struct {int disco_mutex; int state; } ;


 int SAS_HA_ATA_EH_ACTIVE ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_bit (int ,int *) ;

void sas_disable_revalidation(struct sas_ha_struct *ha)
{
 mutex_lock(&ha->disco_mutex);
 set_bit(SAS_HA_ATA_EH_ACTIVE, &ha->state);
 mutex_unlock(&ha->disco_mutex);
}
