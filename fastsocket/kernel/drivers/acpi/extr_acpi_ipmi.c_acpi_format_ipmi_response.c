
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_ipmi_msg {int rx_len; int rx_data; int msg_done; } ;
struct acpi_ipmi_buffer {int data; int length; int status; } ;
typedef int acpi_integer ;


 int ACPI_IPMI_OK ;
 int ACPI_IPMI_TIMEOUT ;
 int ACPI_IPMI_UNKNOWN ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static void acpi_format_ipmi_response(struct acpi_ipmi_msg *msg,
  acpi_integer *value, int rem_time)
{
 struct acpi_ipmi_buffer *buffer;





 buffer = (struct acpi_ipmi_buffer *)value;
 if (!rem_time && !msg->msg_done) {
  buffer->status = ACPI_IPMI_TIMEOUT;
  return;
 }





 if (!msg->msg_done || !msg->rx_len) {
  buffer->status = ACPI_IPMI_UNKNOWN;
  return;
 }




 buffer->status = ACPI_IPMI_OK;
 buffer->length = msg->rx_len;
 memcpy(buffer->data, msg->rx_data, msg->rx_len);
}
