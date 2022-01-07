
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_usage {int dummy; } ;
struct hid_field {int dummy; } ;
struct hid_driver {int (* event ) (struct hid_device*,struct hid_field*,struct hid_usage*,int ) ;int name; } ;
struct hid_device {int claimed; int (* hiddev_hid_event ) (struct hid_device*,struct hid_field*,struct hid_usage*,int ) ;struct hid_driver* driver; } ;
typedef int __s32 ;


 int HID_CLAIMED_HIDDEV ;
 int HID_CLAIMED_INPUT ;
 int dbg_hid (char*,int ,int) ;
 int hid_dump_input (struct hid_device*,struct hid_usage*,int ) ;
 scalar_t__ hid_match_usage (struct hid_device*,struct hid_usage*) ;
 int hidinput_hid_event (struct hid_device*,struct hid_field*,struct hid_usage*,int ) ;
 int stub1 (struct hid_device*,struct hid_field*,struct hid_usage*,int ) ;
 int stub2 (struct hid_device*,struct hid_field*,struct hid_usage*,int ) ;

__attribute__((used)) static void hid_process_event(struct hid_device *hid, struct hid_field *field,
  struct hid_usage *usage, __s32 value, int interrupt)
{
 struct hid_driver *hdrv = hid->driver;
 int ret;

 hid_dump_input(hid, usage, value);

 if (hdrv && hdrv->event && hid_match_usage(hid, usage)) {
  ret = hdrv->event(hid, field, usage, value);
  if (ret != 0) {
   if (ret < 0)
    dbg_hid("%s's event failed with %d\n",
      hdrv->name, ret);
   return;
  }
 }

 if (hid->claimed & HID_CLAIMED_INPUT)
  hidinput_hid_event(hid, field, usage, value);
 if (hid->claimed & HID_CLAIMED_HIDDEV && interrupt && hid->hiddev_hid_event)
  hid->hiddev_hid_event(hid, field, usage, value);
}
