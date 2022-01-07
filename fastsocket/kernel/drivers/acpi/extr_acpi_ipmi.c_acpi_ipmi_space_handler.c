
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct acpi_ipmi_msg {int head; int tx_complete; int tx_message; int tx_msgid; int addr; } ;
struct acpi_ipmi_device {int tx_msg_lock; int user_interface; int tx_msg_list; } ;
typedef int acpi_status ;
typedef int acpi_physical_address ;
typedef int acpi_integer ;


 int ACPI_IO_MASK ;
 int ACPI_READ ;
 int AE_ERROR ;
 int AE_NOT_EXIST ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 int AE_TYPE ;
 int IPMI_TIMEOUT ;
 struct acpi_ipmi_msg* acpi_alloc_ipmi_msg (struct acpi_ipmi_device*) ;
 int acpi_format_ipmi_msg (struct acpi_ipmi_msg*,int ,int *) ;
 int acpi_format_ipmi_response (struct acpi_ipmi_msg*,int *,int) ;
 int ipmi_request_settime (int ,int *,int ,int *,int *,int ,int ,int ) ;
 int kfree (struct acpi_ipmi_msg*) ;
 int list_add_tail (int *,int *) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static acpi_status
acpi_ipmi_space_handler(u32 function, acpi_physical_address address,
        u32 bits, acpi_integer *value,
        void *handler_context, void *region_context)
{
 struct acpi_ipmi_msg *tx_msg;
 struct acpi_ipmi_device *ipmi_device = handler_context;
 int err, rem_time;
 acpi_status status;






 if ((function & ACPI_IO_MASK) == ACPI_READ)
  return AE_TYPE;

 if (!ipmi_device->user_interface)
  return AE_NOT_EXIST;

 tx_msg = acpi_alloc_ipmi_msg(ipmi_device);
 if (!tx_msg)
  return AE_NO_MEMORY;

 acpi_format_ipmi_msg(tx_msg, address, value);
 mutex_lock(&ipmi_device->tx_msg_lock);
 list_add_tail(&tx_msg->head, &ipmi_device->tx_msg_list);
 mutex_unlock(&ipmi_device->tx_msg_lock);
 err = ipmi_request_settime(ipmi_device->user_interface,
     &tx_msg->addr,
     tx_msg->tx_msgid,
     &tx_msg->tx_message,
     ((void*)0), 0, 0, 0);
 if (err) {
  status = AE_ERROR;
  goto end_label;
 }
 rem_time = wait_for_completion_timeout(&tx_msg->tx_complete,
     IPMI_TIMEOUT);
 acpi_format_ipmi_response(tx_msg, value, rem_time);
 status = AE_OK;

end_label:
 mutex_lock(&ipmi_device->tx_msg_lock);
 list_del(&tx_msg->head);
 mutex_unlock(&ipmi_device->tx_msg_lock);
 kfree(tx_msg);
 return status;
}
