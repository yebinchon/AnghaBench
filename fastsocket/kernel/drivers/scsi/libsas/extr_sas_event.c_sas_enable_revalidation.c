
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sas_ha_struct {int num_phys; int disco_mutex; struct asd_sas_port** sas_port; int state; } ;
struct sas_discovery {TYPE_1__* disc_work; int pending; } ;
struct asd_sas_port {struct sas_discovery disc; } ;
struct TYPE_2__ {int work; } ;


 int DISCE_REVALIDATE_DOMAIN ;
 int SAS_HA_ATA_EH_ACTIVE ;
 int clear_bit (int ,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sas_queue_event (int const,int *,int *,struct sas_ha_struct*) ;
 int test_and_clear_bit (int const,int *) ;

void sas_enable_revalidation(struct sas_ha_struct *ha)
{
 int i;

 mutex_lock(&ha->disco_mutex);
 clear_bit(SAS_HA_ATA_EH_ACTIVE, &ha->state);
 for (i = 0; i < ha->num_phys; i++) {
  struct asd_sas_port *port = ha->sas_port[i];
  const int ev = DISCE_REVALIDATE_DOMAIN;
  struct sas_discovery *d = &port->disc;

  if (!test_and_clear_bit(ev, &d->pending))
   continue;

  sas_queue_event(ev, &d->pending, &d->disc_work[ev].work, ha);
 }
 mutex_unlock(&ha->disco_mutex);
}
