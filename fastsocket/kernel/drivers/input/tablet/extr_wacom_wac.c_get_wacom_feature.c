
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wacom_features {int dummy; } ;
struct usb_device_id {int dummy; } ;


 struct wacom_features* wacom_features ;
 struct usb_device_id const* wacom_ids ;

struct wacom_features * get_wacom_feature(const struct usb_device_id *id)
{
        int index = id - wacom_ids;
        struct wacom_features *wf = &wacom_features[index];

        return wf;
}
