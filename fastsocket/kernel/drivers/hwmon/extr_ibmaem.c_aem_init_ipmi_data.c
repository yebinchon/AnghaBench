
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_5__ {int netfn; } ;
struct TYPE_4__ {scalar_t__* data; int channel; int addr_type; } ;
struct aem_ipmi_data {int interface; int user; TYPE_2__ tx_message; scalar_t__ tx_msgid; TYPE_1__ address; struct device* bmc_device; int read_complete; } ;
struct TYPE_6__ {int ipmi_hndlrs; } ;


 int AEM_NETFN ;
 int EACCES ;
 int IPMI_BMC_CHANNEL ;
 int IPMI_SYSTEM_INTERFACE_ADDR_TYPE ;
 int dev_err (struct device*,char*,int) ;
 TYPE_3__ driver_data ;
 int init_completion (int *) ;
 int ipmi_create_user (int,int *,struct aem_ipmi_data*,int *) ;

__attribute__((used)) static int aem_init_ipmi_data(struct aem_ipmi_data *data, int iface,
         struct device *bmc)
{
 int err;

 init_completion(&data->read_complete);
 data->bmc_device = bmc;


 data->address.addr_type = IPMI_SYSTEM_INTERFACE_ADDR_TYPE;
 data->address.channel = IPMI_BMC_CHANNEL;
 data->address.data[0] = 0;
 data->interface = iface;


 data->tx_msgid = 0;
 data->tx_message.netfn = AEM_NETFN;


 err = ipmi_create_user(data->interface, &driver_data.ipmi_hndlrs,
          data, &data->user);
 if (err < 0) {
  dev_err(bmc, "Unable to register user with IPMI "
   "interface %d\n", data->interface);
  return -EACCES;
 }

 return 0;
}
