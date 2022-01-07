
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct domain_device {int dummy; } ;


 int TMF_ABORT_TASK_SET ;
 int TMF_RESP_FUNC_COMPLETE ;
 int asd_clear_nexus_I_T_L (struct domain_device*,int *) ;
 int asd_initiate_ssp_tmf (struct domain_device*,int *,int ,int ) ;

int asd_abort_task_set(struct domain_device *dev, u8 *lun)
{
 int res = asd_initiate_ssp_tmf(dev, lun, TMF_ABORT_TASK_SET, 0);

 if (res == TMF_RESP_FUNC_COMPLETE)
  asd_clear_nexus_I_T_L(dev, lun);
 return res;
}
