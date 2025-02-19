
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sas_phy {int dummy; } ;
struct pm8001_tmf_task {int tmf; } ;
struct pm8001_hba_info {int dummy; } ;
struct pm8001_device {int device_id; } ;
struct domain_device {struct pm8001_device* lldd_dev; } ;
struct TYPE_2__ {int (* set_dev_state_req ) (struct pm8001_hba_info*,struct pm8001_device*,int) ;} ;


 TYPE_1__* PM8001_CHIP_DISP ;
 int PM8001_EH_DBG (struct pm8001_hba_info*,int ) ;
 int TMF_LU_RESET ;
 int TMF_RESP_FUNC_FAILED ;
 scalar_t__ dev_is_sata (struct domain_device*) ;
 int msleep (int) ;
 int pm8001_exec_internal_task_abort (struct pm8001_hba_info*,struct pm8001_device*,struct domain_device*,int,int ) ;
 struct pm8001_hba_info* pm8001_find_ha_by_dev (struct domain_device*) ;
 int pm8001_issue_ssp_tmf (struct domain_device*,int *,struct pm8001_tmf_task*) ;
 int pm8001_printk (char*,int ,int) ;
 struct sas_phy* sas_get_local_phy (struct domain_device*) ;
 int sas_phy_reset (struct sas_phy*,int) ;
 int sas_put_local_phy (struct sas_phy*) ;
 int stub1 (struct pm8001_hba_info*,struct pm8001_device*,int) ;

int pm8001_lu_reset(struct domain_device *dev, u8 *lun)
{
 int rc = TMF_RESP_FUNC_FAILED;
 struct pm8001_tmf_task tmf_task;
 struct pm8001_device *pm8001_dev = dev->lldd_dev;
 struct pm8001_hba_info *pm8001_ha = pm8001_find_ha_by_dev(dev);
 if (dev_is_sata(dev)) {
  struct sas_phy *phy = sas_get_local_phy(dev);
  rc = pm8001_exec_internal_task_abort(pm8001_ha, pm8001_dev ,
   dev, 1, 0);
  rc = sas_phy_reset(phy, 1);
  sas_put_local_phy(phy);
  rc = PM8001_CHIP_DISP->set_dev_state_req(pm8001_ha,
   pm8001_dev, 0x01);
  msleep(2000);
 } else {
  tmf_task.tmf = TMF_LU_RESET;
  rc = pm8001_issue_ssp_tmf(dev, lun, &tmf_task);
 }

 PM8001_EH_DBG(pm8001_ha, pm8001_printk("for device[%x]:rc=%d\n",
  pm8001_dev->device_id, rc));
 return rc;
}
