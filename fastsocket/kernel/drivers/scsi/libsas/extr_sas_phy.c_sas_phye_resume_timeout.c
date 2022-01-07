
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct work_struct {int dummy; } ;
struct asd_sas_phy {scalar_t__ suspended; scalar_t__ error; TYPE_1__* phy; int phy_events_pending; } ;
struct asd_sas_event {struct asd_sas_phy* phy; } ;
struct TYPE_2__ {int dev; } ;


 int PHYE_RESUME_TIMEOUT ;
 int clear_bit (int ,int *) ;
 int dev_info (int *,char*) ;
 int sas_deform_port (struct asd_sas_phy*,int) ;
 struct asd_sas_event* to_asd_sas_event (struct work_struct*) ;

__attribute__((used)) static void sas_phye_resume_timeout(struct work_struct *work)
{
 struct asd_sas_event *ev = to_asd_sas_event(work);
 struct asd_sas_phy *phy = ev->phy;

 clear_bit(PHYE_RESUME_TIMEOUT, &phy->phy_events_pending);


 if (!phy->suspended) {
  dev_info(&phy->phy->dev, "resume timeout cancelled\n");
  return;
 }

 phy->error = 0;
 phy->suspended = 0;
 sas_deform_port(phy, 1);
}
