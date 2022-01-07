
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int shost; } ;
struct sas_ha_struct {int num_phys; TYPE_2__ core; struct asd_sas_phy** sas_phy; int eh_wait_q; int dev; } ;
struct asd_sas_phy {TYPE_1__* phy; scalar_t__ suspended; } ;
struct TYPE_3__ {int dev; } ;


 int PHYE_RESUME_TIMEOUT ;
 int dev_info (int ,char*,int,char*) ;
 int dev_warn (int *,char*) ;
 unsigned long msecs_to_jiffies (int) ;
 int phys_suspended (struct sas_ha_struct*) ;
 int sas_drain_work (struct sas_ha_struct*) ;
 int sas_notify_phy_event (struct asd_sas_phy*,int ) ;
 int scsi_unblock_requests (int ) ;
 int wait_event_timeout (int ,int,unsigned long const) ;

void sas_resume_ha(struct sas_ha_struct *ha)
{
 const unsigned long tmo = msecs_to_jiffies(25000);
 int i;







 i = phys_suspended(ha);
 if (i)
  dev_info(ha->dev, "waiting up to 25 seconds for %d phy%s to resume\n",
    i, i > 1 ? "s" : "");
 wait_event_timeout(ha->eh_wait_q, phys_suspended(ha) == 0, tmo);
 for (i = 0; i < ha->num_phys; i++) {
  struct asd_sas_phy *phy = ha->sas_phy[i];

  if (phy->suspended) {
   dev_warn(&phy->phy->dev, "resume timeout\n");
   sas_notify_phy_event(phy, PHYE_RESUME_TIMEOUT);
  }
 }




 scsi_unblock_requests(ha->core.shost);
 sas_drain_work(ha);
}
