
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;
struct asd_sas_phy {int port_events_pending; } ;
struct asd_sas_event {struct asd_sas_phy* phy; } ;


 int PORTE_TIMER_EVENT ;
 int clear_bit (int ,int *) ;
 int sas_deform_port (struct asd_sas_phy*,int) ;
 struct asd_sas_event* to_asd_sas_event (struct work_struct*) ;

void sas_porte_timer_event(struct work_struct *work)
{
 struct asd_sas_event *ev = to_asd_sas_event(work);
 struct asd_sas_phy *phy = ev->phy;

 clear_bit(PORTE_TIMER_EVENT, &phy->port_events_pending);

 sas_deform_port(phy, 1);
}
