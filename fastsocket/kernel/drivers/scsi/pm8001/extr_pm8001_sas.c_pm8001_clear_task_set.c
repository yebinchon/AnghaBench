
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pm8001_tmf_task {int tmf; } ;
struct pm8001_hba_info {int dummy; } ;
struct pm8001_device {int device_id; } ;
struct domain_device {struct pm8001_device* lldd_dev; } ;


 int PM8001_EH_DBG (struct pm8001_hba_info*,int ) ;
 int TMF_CLEAR_TASK_SET ;
 int TMF_RESP_FUNC_FAILED ;
 struct pm8001_hba_info* pm8001_find_ha_by_dev (struct domain_device*) ;
 int pm8001_issue_ssp_tmf (struct domain_device*,int *,struct pm8001_tmf_task*) ;
 int pm8001_printk (char*,int ) ;

int pm8001_clear_task_set(struct domain_device *dev, u8 *lun)
{
 int rc = TMF_RESP_FUNC_FAILED;
 struct pm8001_tmf_task tmf_task;
 struct pm8001_device *pm8001_dev = dev->lldd_dev;
 struct pm8001_hba_info *pm8001_ha = pm8001_find_ha_by_dev(dev);

 PM8001_EH_DBG(pm8001_ha,
  pm8001_printk("I_T_L_Q clear task set[%x]\n",
  pm8001_dev->device_id));
 tmf_task.tmf = TMF_CLEAR_TASK_SET;
 rc = pm8001_issue_ssp_tmf(dev, lun, &tmf_task);
 return rc;
}
