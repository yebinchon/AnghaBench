
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hid_field {unsigned int report_count; unsigned int report_offset; unsigned int report_size; scalar_t__ logical_minimum; scalar_t__ logical_maximum; int flags; scalar_t__* value; TYPE_1__* usage; } ;
struct hid_device {int dummy; } ;
typedef int __u8 ;
typedef scalar_t__ __s32 ;
struct TYPE_2__ {scalar_t__ hid; } ;


 int GFP_ATOMIC ;
 int HID_MAIN_ITEM_VARIABLE ;
 scalar_t__ HID_UP_KEYBOARD ;
 scalar_t__ extract (int *,unsigned int,unsigned int) ;
 int hid_process_event (struct hid_device*,struct hid_field*,TYPE_1__*,int,int) ;
 int kfree (scalar_t__*) ;
 scalar_t__* kmalloc (int,int ) ;
 int memcpy (scalar_t__*,scalar_t__*,unsigned int) ;
 scalar_t__ search (scalar_t__*,scalar_t__,unsigned int) ;
 scalar_t__ snto32 (scalar_t__,unsigned int) ;

__attribute__((used)) static void hid_input_field(struct hid_device *hid, struct hid_field *field,
       __u8 *data, int interrupt)
{
 unsigned n;
 unsigned count = field->report_count;
 unsigned offset = field->report_offset;
 unsigned size = field->report_size;
 __s32 min = field->logical_minimum;
 __s32 max = field->logical_maximum;
 __s32 *value;

 if (!(value = kmalloc(sizeof(__s32) * count, GFP_ATOMIC)))
  return;

 for (n = 0; n < count; n++) {

   value[n] = min < 0 ? snto32(extract(data, offset + n * size, size), size) :
          extract(data, offset + n * size, size);

   if (!(field->flags & HID_MAIN_ITEM_VARIABLE)
       && value[n] >= min && value[n] <= max
       && field->usage[value[n] - min].hid == HID_UP_KEYBOARD + 1)
    goto exit;
 }

 for (n = 0; n < count; n++) {

  if (HID_MAIN_ITEM_VARIABLE & field->flags) {
   hid_process_event(hid, field, &field->usage[n], value[n], interrupt);
   continue;
  }

  if (field->value[n] >= min && field->value[n] <= max
   && field->usage[field->value[n] - min].hid
   && search(value, field->value[n], count))
    hid_process_event(hid, field, &field->usage[field->value[n] - min], 0, interrupt);

  if (value[n] >= min && value[n] <= max
   && field->usage[value[n] - min].hid
   && search(field->value, value[n], count))
    hid_process_event(hid, field, &field->usage[value[n] - min], 1, interrupt);
 }

 memcpy(field->value, value, count * sizeof(__s32));
exit:
 kfree(value);
}
