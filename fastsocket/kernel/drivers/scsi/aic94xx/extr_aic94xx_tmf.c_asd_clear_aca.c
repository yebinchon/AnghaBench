
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct domain_device {int dummy; } ;


 int TMF_CLEAR_ACA ;
 int TMF_RESP_FUNC_COMPLETE ;
 int asd_clear_nexus_I_T_L (struct domain_device*,int *) ;
 int asd_initiate_ssp_tmf (struct domain_device*,int *,int ,int ) ;

int asd_clear_aca(struct domain_device *dev, u8 *lun)
{
 int res = asd_initiate_ssp_tmf(dev, lun, TMF_CLEAR_ACA, 0);

 if (res == TMF_RESP_FUNC_COMPLETE)
  asd_clear_nexus_I_T_L(dev, lun);
 return res;
}
