
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sas_work {int work; int drain_node; } ;
struct TYPE_2__ {int shost; } ;
struct sas_ha_struct {TYPE_1__ core; int defer_q; int state; } ;


 int SAS_HA_DRAINING ;
 int SAS_HA_REGISTERED ;
 int list_add (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 int scsi_queue_work (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

void sas_queue_work(struct sas_ha_struct *ha, struct sas_work *sw)
{
 if (!test_bit(SAS_HA_REGISTERED, &ha->state))
  return;

 if (test_bit(SAS_HA_DRAINING, &ha->state)) {

  if (list_empty(&sw->drain_node))
   list_add(&sw->drain_node, &ha->defer_q);
 } else
  scsi_queue_work(ha->core.shost, &sw->work);
}
