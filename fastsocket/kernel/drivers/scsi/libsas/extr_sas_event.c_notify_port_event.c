
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sas_ha_struct {int dummy; } ;
struct asd_sas_phy {TYPE_1__* port_events; int port_events_pending; struct sas_ha_struct* ha; } ;
typedef enum port_event { ____Placeholder_port_event } port_event ;
struct TYPE_2__ {int work; } ;


 int BUG_ON (int) ;
 int PORT_NUM_EVENTS ;
 int sas_queue_event (int,int *,int *,struct sas_ha_struct*) ;

__attribute__((used)) static void notify_port_event(struct asd_sas_phy *phy, enum port_event event)
{
 struct sas_ha_struct *ha = phy->ha;

 BUG_ON(event >= PORT_NUM_EVENTS);

 sas_queue_event(event, &phy->port_events_pending,
   &phy->port_events[event].work, ha);
}
