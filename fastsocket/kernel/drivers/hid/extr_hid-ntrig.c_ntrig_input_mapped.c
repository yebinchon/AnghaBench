
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_usage {scalar_t__ type; int code; } ;
struct hid_input {int dummy; } ;
struct hid_field {int dummy; } ;
struct hid_device {int dummy; } ;


 scalar_t__ EV_ABS ;
 scalar_t__ EV_KEY ;
 scalar_t__ EV_REL ;
 int clear_bit (int ,unsigned long*) ;

__attribute__((used)) static int ntrig_input_mapped(struct hid_device *hdev, struct hid_input *hi,
  struct hid_field *field, struct hid_usage *usage,
  unsigned long **bit, int *max)
{
 if (usage->type == EV_KEY || usage->type == EV_REL
   || usage->type == EV_ABS)
  clear_bit(usage->code, *bit);

 return 0;
}
