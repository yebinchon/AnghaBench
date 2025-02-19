
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* uint32_t ;
struct sas_phy_linkrates {int maximum_linkrate; int minimum_linkrate; } ;
struct sas_phy {void* phy_reset_problem_count; void* loss_of_dword_sync_count; void* running_disparity_error_count; void* invalid_dword_count; } ;
struct pm8001_hba_info {int lock; int chip_id; TYPE_3__* io_mem; TYPE_2__* phy; } ;
struct asd_sas_phy {int id; struct sas_phy* phy; TYPE_1__* ha; } ;
typedef enum phy_func { ____Placeholder_phy_func } phy_func ;
struct TYPE_8__ {int (* phy_stop_req ) (struct pm8001_hba_info*,int) ;int (* phy_ctl_req ) (struct pm8001_hba_info*,int,int ) ;int (* phy_start_req ) (struct pm8001_hba_info*,int) ;} ;
struct TYPE_7__ {scalar_t__ memvirtaddr; } ;
struct TYPE_6__ {int phy_state; int maximum_linkrate; int minimum_linkrate; int * enable_completion; } ;
struct TYPE_5__ {struct pm8001_hba_info* lldd_ha; } ;


 int DECLARE_COMPLETION_ONSTACK (int ) ;
 int EINVAL ;
 int EOPNOTSUPP ;






 int PHY_HARD_RESET ;
 int PHY_LINK_RESET ;
 TYPE_4__* PM8001_CHIP_DISP ;
 int chip_8001 ;
 int completion ;
 int msleep (int) ;
 int pm8001_bar4_shift (struct pm8001_hba_info*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct pm8001_hba_info*,int) ;
 int stub2 (struct pm8001_hba_info*,int,int ) ;
 int stub3 (struct pm8001_hba_info*,int) ;
 int stub4 (struct pm8001_hba_info*,int,int ) ;
 int stub5 (struct pm8001_hba_info*,int) ;
 int stub6 (struct pm8001_hba_info*,int,int ) ;
 int stub7 (struct pm8001_hba_info*,int,int ) ;
 int stub8 (struct pm8001_hba_info*,int) ;
 int wait_for_completion (int *) ;

int pm8001_phy_control(struct asd_sas_phy *sas_phy, enum phy_func func,
 void *funcdata)
{
 int rc = 0, phy_id = sas_phy->id;
 struct pm8001_hba_info *pm8001_ha = ((void*)0);
 struct sas_phy_linkrates *rates;
 DECLARE_COMPLETION_ONSTACK(completion);
 unsigned long flags;
 pm8001_ha = sas_phy->ha->lldd_ha;
 pm8001_ha->phy[phy_id].enable_completion = &completion;
 switch (func) {
 case 128:
  rates = funcdata;
  if (rates->minimum_linkrate) {
   pm8001_ha->phy[phy_id].minimum_linkrate =
    rates->minimum_linkrate;
  }
  if (rates->maximum_linkrate) {
   pm8001_ha->phy[phy_id].maximum_linkrate =
    rates->maximum_linkrate;
  }
  if (pm8001_ha->phy[phy_id].phy_state == 0) {
   PM8001_CHIP_DISP->phy_start_req(pm8001_ha, phy_id);
   wait_for_completion(&completion);
  }
  PM8001_CHIP_DISP->phy_ctl_req(pm8001_ha, phy_id,
           PHY_LINK_RESET);
  break;
 case 131:
  if (pm8001_ha->phy[phy_id].phy_state == 0) {
   PM8001_CHIP_DISP->phy_start_req(pm8001_ha, phy_id);
   wait_for_completion(&completion);
  }
  PM8001_CHIP_DISP->phy_ctl_req(pm8001_ha, phy_id,
           PHY_HARD_RESET);
  break;
 case 130:
  if (pm8001_ha->phy[phy_id].phy_state == 0) {
   PM8001_CHIP_DISP->phy_start_req(pm8001_ha, phy_id);
   wait_for_completion(&completion);
  }
  PM8001_CHIP_DISP->phy_ctl_req(pm8001_ha, phy_id,
           PHY_LINK_RESET);
  break;
 case 129:
  PM8001_CHIP_DISP->phy_ctl_req(pm8001_ha, phy_id,
           PHY_LINK_RESET);
  break;
 case 133:
  PM8001_CHIP_DISP->phy_stop_req(pm8001_ha, phy_id);
  break;
 case 132:
  spin_lock_irqsave(&pm8001_ha->lock, flags);
  if (pm8001_ha->chip_id == chip_8001) {
   if (-1 == pm8001_bar4_shift(pm8001_ha,
     (phy_id < 4) ? 0x30000 : 0x40000)) {
    spin_unlock_irqrestore(&pm8001_ha->lock, flags);
    return -EINVAL;
   }
  }
  {
   struct sas_phy *phy = sas_phy->phy;
   uint32_t *qp = (uint32_t *)(((char *)
    pm8001_ha->io_mem[2].memvirtaddr)
    + 0x1034 + (0x4000 * (phy_id & 3)));

   phy->invalid_dword_count = qp[0];
   phy->running_disparity_error_count = qp[1];
   phy->loss_of_dword_sync_count = qp[3];
   phy->phy_reset_problem_count = qp[4];
  }
  if (pm8001_ha->chip_id == chip_8001)
   pm8001_bar4_shift(pm8001_ha, 0);
  spin_unlock_irqrestore(&pm8001_ha->lock, flags);
  return 0;
 default:
  rc = -EOPNOTSUPP;
 }
 msleep(300);
 return rc;
}
