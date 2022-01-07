
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sas_ha_struct {int dummy; } ;
struct asd_sas_phy {TYPE_1__* phy_events; int phy_events_pending; struct sas_ha_struct* ha; } ;
typedef enum phy_event { ____Placeholder_phy_event } phy_event ;
struct TYPE_2__ {int work; } ;


 int BUG_ON (int) ;
 int PHY_NUM_EVENTS ;
 int sas_queue_event (int,int *,int *,struct sas_ha_struct*) ;

void sas_notify_phy_event(struct asd_sas_phy *phy, enum phy_event event)
{
 struct sas_ha_struct *ha = phy->ha;

 BUG_ON(event >= PHY_NUM_EVENTS);

 sas_queue_event(event, &phy->phy_events_pending,
   &phy->phy_events[event].work, ha);
}
