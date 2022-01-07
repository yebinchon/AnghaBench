
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct acpi_ipmi_device {int head; int tx_msg_list; int tx_msg_lock; } ;
struct TYPE_2__ {int ipmi_devices; } ;


 int INIT_LIST_HEAD (int *) ;
 TYPE_1__ driver_data ;
 int ipmi_install_space_handler (struct acpi_ipmi_device*) ;
 int list_add_tail (int *,int *) ;
 int mutex_init (int *) ;

__attribute__((used)) static void acpi_add_ipmi_device(struct acpi_ipmi_device *ipmi_device)
{

 INIT_LIST_HEAD(&ipmi_device->head);

 mutex_init(&ipmi_device->tx_msg_lock);
 INIT_LIST_HEAD(&ipmi_device->tx_msg_list);
 ipmi_install_space_handler(ipmi_device);

 list_add_tail(&ipmi_device->head, &driver_data.ipmi_devices);
}
