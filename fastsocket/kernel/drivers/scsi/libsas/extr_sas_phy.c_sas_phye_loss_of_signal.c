
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;
struct asd_sas_phy {scalar_t__ error; int phy_events_pending; } ;
struct asd_sas_event {struct asd_sas_phy* phy; } ;


 int PHYE_LOSS_OF_SIGNAL ;
 int clear_bit (int ,int *) ;
 int sas_deform_port (struct asd_sas_phy*,int) ;
 struct asd_sas_event* to_asd_sas_event (struct work_struct*) ;

__attribute__((used)) static void sas_phye_loss_of_signal(struct work_struct *work)
{
 struct asd_sas_event *ev = to_asd_sas_event(work);
 struct asd_sas_phy *phy = ev->phy;

 clear_bit(PHYE_LOSS_OF_SIGNAL, &phy->phy_events_pending);
 phy->error = 0;
 sas_deform_port(phy, 1);
}
