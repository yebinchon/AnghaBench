
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int data; int cmd; int netfn; } ;
struct TYPE_4__ {scalar_t__* data; int channel; int addr_type; } ;
struct ibmpex_bmc_data {int interface; int user; int hwmon_dev; struct device* bmc_device; int list; int tx_msg_data; TYPE_2__ tx_message; int read_complete; scalar_t__ tx_msgid; int lock; TYPE_1__ address; } ;
struct device {int dummy; } ;
struct TYPE_6__ {int bmc_data; int ipmi_hndlrs; } ;


 int GFP_KERNEL ;
 int IPMI_BMC_CHANNEL ;
 int IPMI_SYSTEM_INTERFACE_ADDR_TYPE ;
 scalar_t__ IS_ERR (int ) ;
 int PEX_COMMAND ;
 int PEX_NET_FUNCTION ;
 int dev_err (struct device*,char*,...) ;
 int dev_set_drvdata (struct device*,struct ibmpex_bmc_data*) ;
 TYPE_3__ driver_data ;
 int hwmon_device_register (struct device*) ;
 int hwmon_device_unregister (int ) ;
 int ibmpex_find_sensors (struct ibmpex_bmc_data*) ;
 int ibmpex_ver_check (struct ibmpex_bmc_data*) ;
 int init_completion (int *) ;
 int ipmi_create_user (int,int *,struct ibmpex_bmc_data*,int *) ;
 int ipmi_destroy_user (int ) ;
 int kfree (struct ibmpex_bmc_data*) ;
 struct ibmpex_bmc_data* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int mutex_init (int *) ;

__attribute__((used)) static void ibmpex_register_bmc(int iface, struct device *dev)
{
 struct ibmpex_bmc_data *data;
 int err;

 data = kzalloc(sizeof(*data), GFP_KERNEL);
 if (!data) {
  dev_err(dev, "Insufficient memory for BMC interface.\n");
  return;
 }

 data->address.addr_type = IPMI_SYSTEM_INTERFACE_ADDR_TYPE;
 data->address.channel = IPMI_BMC_CHANNEL;
 data->address.data[0] = 0;
 data->interface = iface;
 data->bmc_device = dev;


 err = ipmi_create_user(data->interface, &driver_data.ipmi_hndlrs,
          data, &data->user);
 if (err < 0) {
  dev_err(dev, "Unable to register user with IPMI "
   "interface %d\n", data->interface);
  goto out;
 }

 mutex_init(&data->lock);


 data->tx_msgid = 0;
 init_completion(&data->read_complete);
 data->tx_message.netfn = PEX_NET_FUNCTION;
 data->tx_message.cmd = PEX_COMMAND;
 data->tx_message.data = data->tx_msg_data;


 err = ibmpex_ver_check(data);
 if (err)
  goto out_user;


 data->hwmon_dev = hwmon_device_register(data->bmc_device);

 if (IS_ERR(data->hwmon_dev)) {
  dev_err(data->bmc_device, "Unable to register hwmon "
   "device for IPMI interface %d\n",
   data->interface);
  goto out_user;
 }


 dev_set_drvdata(dev, data);
 list_add_tail(&data->list, &driver_data.bmc_data);


 err = ibmpex_find_sensors(data);
 if (err) {
  dev_err(data->bmc_device, "Error %d finding sensors\n", err);
  goto out_register;
 }

 return;

out_register:
 hwmon_device_unregister(data->hwmon_dev);
out_user:
 ipmi_destroy_user(data->user);
out:
 kfree(data);
}
