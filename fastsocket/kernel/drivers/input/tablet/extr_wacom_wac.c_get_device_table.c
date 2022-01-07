
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device_id {int dummy; } ;


 struct usb_device_id* wacom_ids ;

const struct usb_device_id *get_device_table(void)
{
        const struct usb_device_id *id_table = wacom_ids;

        return id_table;
}
