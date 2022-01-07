
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kernel_ipmi_msg {int data_len; int data; int cmd; int netfn; } ;
struct TYPE_2__ {scalar_t__* data; int channel; int addr_type; } ;
struct acpi_ipmi_msg {scalar_t__ tx_msgid; struct acpi_ipmi_device* device; TYPE_1__ addr; int tx_data; struct kernel_ipmi_msg tx_message; } ;
struct acpi_ipmi_device {int tx_msg_lock; scalar_t__ curr_msgid; } ;
struct acpi_ipmi_buffer {int data; int length; } ;
typedef int acpi_physical_address ;
typedef int acpi_integer ;


 int IPMI_BMC_CHANNEL ;
 int IPMI_OP_RGN_CMD (int ) ;
 int IPMI_OP_RGN_NETFN (int ) ;
 int IPMI_SYSTEM_INTERFACE_ADDR_TYPE ;
 int memcpy (int ,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void acpi_format_ipmi_msg(struct acpi_ipmi_msg *tx_msg,
    acpi_physical_address address,
    acpi_integer *value)
{
 struct kernel_ipmi_msg *msg;
 struct acpi_ipmi_buffer *buffer;
 struct acpi_ipmi_device *device;

 msg = &tx_msg->tx_message;




 msg->netfn = IPMI_OP_RGN_NETFN(address);
 msg->cmd = IPMI_OP_RGN_CMD(address);
 msg->data = tx_msg->tx_data;




 buffer = (struct acpi_ipmi_buffer *)value;

 msg->data_len = buffer->length;
 memcpy(tx_msg->tx_data, buffer->data, msg->data_len);







 tx_msg->addr.addr_type = IPMI_SYSTEM_INTERFACE_ADDR_TYPE;
 tx_msg->addr.channel = IPMI_BMC_CHANNEL;
 tx_msg->addr.data[0] = 0;


 device = tx_msg->device;
 mutex_lock(&device->tx_msg_lock);
 device->curr_msgid++;
 tx_msg->tx_msgid = device->curr_msgid;
 mutex_unlock(&device->tx_msg_lock);
}
