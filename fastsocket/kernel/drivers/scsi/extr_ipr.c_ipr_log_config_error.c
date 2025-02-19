
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ipr_ioa_cfg {int dummy; } ;
struct ipr_hostrcb_type_03_error {struct ipr_hostrcb_device_data_entry* dev; int errors_detected; int errors_logged; } ;
struct ipr_hostrcb_device_data_entry {int * ioa_data; int cfc_last_with_dev_vpd; int ioa_last_with_dev_vpd; int new_vpd; int vpd; int dev_res_addr; } ;
struct TYPE_5__ {struct ipr_hostrcb_type_03_error type_03_error; } ;
struct TYPE_6__ {TYPE_1__ u; } ;
struct TYPE_7__ {TYPE_2__ error; } ;
struct TYPE_8__ {TYPE_3__ u; } ;
struct ipr_hostrcb {TYPE_4__ hcam; } ;


 int be32_to_cpu (int ) ;
 int ipr_err (char*,...) ;
 int ipr_err_separator ;
 int ipr_log_vpd (int *) ;
 int ipr_phys_res_err (struct ipr_ioa_cfg*,int ,char*,int) ;

__attribute__((used)) static void ipr_log_config_error(struct ipr_ioa_cfg *ioa_cfg,
     struct ipr_hostrcb *hostrcb)
{
 int errors_logged, i;
 struct ipr_hostrcb_device_data_entry *dev_entry;
 struct ipr_hostrcb_type_03_error *error;

 error = &hostrcb->hcam.u.error.u.type_03_error;
 errors_logged = be32_to_cpu(error->errors_logged);

 ipr_err("Device Errors Detected/Logged: %d/%d\n",
  be32_to_cpu(error->errors_detected), errors_logged);

 dev_entry = error->dev;

 for (i = 0; i < errors_logged; i++, dev_entry++) {
  ipr_err_separator;

  ipr_phys_res_err(ioa_cfg, dev_entry->dev_res_addr, "Device %d", i + 1);
  ipr_log_vpd(&dev_entry->vpd);

  ipr_err("-----New Device Information-----\n");
  ipr_log_vpd(&dev_entry->new_vpd);

  ipr_err("Cache Directory Card Information:\n");
  ipr_log_vpd(&dev_entry->ioa_last_with_dev_vpd);

  ipr_err("Adapter Card Information:\n");
  ipr_log_vpd(&dev_entry->cfc_last_with_dev_vpd);

  ipr_err("Additional IOA Data: %08X %08X %08X %08X %08X\n",
   be32_to_cpu(dev_entry->ioa_data[0]),
   be32_to_cpu(dev_entry->ioa_data[1]),
   be32_to_cpu(dev_entry->ioa_data[2]),
   be32_to_cpu(dev_entry->ioa_data[3]),
   be32_to_cpu(dev_entry->ioa_data[4]));
 }
}
