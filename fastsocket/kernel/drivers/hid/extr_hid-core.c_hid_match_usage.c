
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hid_usage_id {int usage_type; int usage_hid; int usage_code; } ;
struct hid_usage {int hid; int type; int code; } ;
struct hid_device {TYPE_1__* driver; } ;
struct TYPE_2__ {struct hid_usage_id* usage_table; } ;


 int HID_ANY_ID ;

__attribute__((used)) static int hid_match_usage(struct hid_device *hid, struct hid_usage *usage)
{
 const struct hid_usage_id *id = hid->driver->usage_table;

 if (!id)
  return 1;

 for (; id->usage_type != HID_ANY_ID - 1; id++)
  if ((id->usage_hid == HID_ANY_ID ||
    id->usage_hid == usage->hid) &&
    (id->usage_type == HID_ANY_ID ||
    id->usage_type == usage->type) &&
    (id->usage_code == HID_ANY_ID ||
     id->usage_code == usage->code))
   return 1;
 return 0;
}
