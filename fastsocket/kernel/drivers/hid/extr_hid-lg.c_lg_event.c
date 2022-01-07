
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hid_usage {scalar_t__ code; int type; } ;
struct hid_field {TYPE_1__* hidinput; } ;
struct hid_device {int dummy; } ;
typedef int __s32 ;
struct TYPE_2__ {int input; } ;


 unsigned long LG_INVERT_HWHEEL ;
 scalar_t__ REL_HWHEEL ;
 scalar_t__ hid_get_drvdata (struct hid_device*) ;
 int input_event (int ,int ,scalar_t__,int ) ;

__attribute__((used)) static int lg_event(struct hid_device *hdev, struct hid_field *field,
  struct hid_usage *usage, __s32 value)
{
 unsigned long quirks = (unsigned long)hid_get_drvdata(hdev);

 if ((quirks & LG_INVERT_HWHEEL) && usage->code == REL_HWHEEL) {
  input_event(field->hidinput->input, usage->type, usage->code,
    -value);
  return 1;
 }

 return 0;
}
