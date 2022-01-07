
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct pm8001_hba_info {int dummy; } ;
struct dev_reg_resp {int device_id; int status; } ;


 int PM8001_MSG_DBG (struct pm8001_hba_info*,int ) ;
 scalar_t__ le32_to_cpu (int ) ;
 int pm8001_printk (char*,scalar_t__,scalar_t__) ;

int pm8001_mpi_dereg_resp(struct pm8001_hba_info *pm8001_ha, void *piomb)
{
 u32 status;
 u32 device_id;
 struct dev_reg_resp *registerRespPayload =
  (struct dev_reg_resp *)(piomb + 4);

 status = le32_to_cpu(registerRespPayload->status);
 device_id = le32_to_cpu(registerRespPayload->device_id);
 if (status != 0)
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk(" deregister device failed ,status = %x"
   ", device_id = %x\n", status, device_id));
 return 0;
}
