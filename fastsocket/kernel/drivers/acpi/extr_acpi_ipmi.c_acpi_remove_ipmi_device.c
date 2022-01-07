
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_ipmi_device {int head; int tx_msg_list; int * user_interface; } ;


 int ipmi_destroy_user (int *) ;
 int ipmi_flush_tx_msg (struct acpi_ipmi_device*) ;
 int ipmi_remove_space_handler (struct acpi_ipmi_device*) ;
 int list_del (int *) ;
 int list_empty (int *) ;

__attribute__((used)) static void acpi_remove_ipmi_device(struct acpi_ipmi_device *ipmi_device)
{




 if (ipmi_device->user_interface) {
  ipmi_destroy_user(ipmi_device->user_interface);
  ipmi_device->user_interface = ((void*)0);
 }

 if (!list_empty(&ipmi_device->tx_msg_list))
  ipmi_flush_tx_msg(ipmi_device);

 list_del(&ipmi_device->head);
 ipmi_remove_space_handler(ipmi_device);
}
