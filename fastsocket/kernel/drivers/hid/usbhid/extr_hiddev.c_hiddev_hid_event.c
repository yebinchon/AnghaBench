
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hiddev_usage_ref {int value; int usage_code; struct hid_usage* usage_index; int field_index; int report_id; int report_type; } ;
struct hid_usage {int hid; } ;
struct hid_field {unsigned int report_type; int usage; int index; TYPE_1__* report; } ;
struct hid_device {int dummy; } ;
typedef int __s32 ;
struct TYPE_2__ {int id; } ;


 unsigned int HID_FEATURE_REPORT ;
 unsigned int HID_INPUT_REPORT ;
 unsigned int HID_OUTPUT_REPORT ;
 int HID_REPORT_TYPE_FEATURE ;
 int HID_REPORT_TYPE_INPUT ;
 int HID_REPORT_TYPE_OUTPUT ;
 int hiddev_send_event (struct hid_device*,struct hiddev_usage_ref*) ;

void hiddev_hid_event(struct hid_device *hid, struct hid_field *field,
        struct hid_usage *usage, __s32 value)
{
 unsigned type = field->report_type;
 struct hiddev_usage_ref uref;

 uref.report_type =
   (type == HID_INPUT_REPORT) ? HID_REPORT_TYPE_INPUT :
   ((type == HID_OUTPUT_REPORT) ? HID_REPORT_TYPE_OUTPUT :
    ((type == HID_FEATURE_REPORT) ? HID_REPORT_TYPE_FEATURE : 0));
 uref.report_id = field->report->id;
 uref.field_index = field->index;
 uref.usage_index = (usage - field->usage);
 uref.usage_code = usage->hid;
 uref.value = value;

 hiddev_send_event(hid, &uref);
}
