
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct hid_field {int maxusage; TYPE_1__* usage; } ;
struct TYPE_2__ {int const hid; } ;


 int const HID_UP_PID ;

__attribute__((used)) static int pidff_find_special_keys(int *keys, struct hid_field *fld,
       const u8 *usagetable, int count)
{

 int i, j;
 int found = 0;

 for (i = 0; i < count; i++) {
  for (j = 0; j < fld->maxusage; j++) {
   if (fld->usage[j].hid == (HID_UP_PID | usagetable[i])) {
    keys[i] = j + 1;
    found++;
    break;
   }
  }
 }
 return found;
}
