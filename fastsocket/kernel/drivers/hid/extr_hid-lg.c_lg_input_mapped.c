
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_usage {scalar_t__ type; int code; } ;
struct hid_input {int dummy; } ;
struct hid_field {int flags; } ;
struct hid_device {int dummy; } ;


 scalar_t__ EV_ABS ;
 scalar_t__ EV_KEY ;
 scalar_t__ EV_REL ;
 int HID_MAIN_ITEM_RELATIVE ;
 unsigned long LG_BAD_RELATIVE_KEYS ;
 unsigned long LG_DUPLICATE_USAGES ;
 int clear_bit (int ,unsigned long*) ;
 scalar_t__ hid_get_drvdata (struct hid_device*) ;

__attribute__((used)) static int lg_input_mapped(struct hid_device *hdev, struct hid_input *hi,
  struct hid_field *field, struct hid_usage *usage,
  unsigned long **bit, int *max)
{
 unsigned long quirks = (unsigned long)hid_get_drvdata(hdev);

 if ((quirks & LG_BAD_RELATIVE_KEYS) && usage->type == EV_KEY &&
   (field->flags & HID_MAIN_ITEM_RELATIVE))
  field->flags &= ~HID_MAIN_ITEM_RELATIVE;

 if ((quirks & LG_DUPLICATE_USAGES) && (usage->type == EV_KEY ||
    usage->type == EV_REL || usage->type == EV_ABS))
  clear_bit(usage->code, *bit);

 return 0;
}
