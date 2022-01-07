
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sas_ha_struct {TYPE_1__* ha_events; int pending; } ;
typedef enum ha_event { ____Placeholder_ha_event } ha_event ;
struct TYPE_2__ {int work; } ;


 int BUG_ON (int) ;
 int HA_NUM_EVENTS ;
 int sas_queue_event (int,int *,int *,struct sas_ha_struct*) ;

__attribute__((used)) static void notify_ha_event(struct sas_ha_struct *sas_ha, enum ha_event event)
{
 BUG_ON(event >= HA_NUM_EVENTS);

 sas_queue_event(event, &sas_ha->pending,
   &sas_ha->ha_events[event].work, sas_ha);
}
