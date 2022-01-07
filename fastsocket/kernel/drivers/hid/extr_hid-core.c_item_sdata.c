
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s32; int s16; int s8; } ;
struct hid_item {int size; TYPE_1__ data; } ;
typedef int s32 ;



__attribute__((used)) static s32 item_sdata(struct hid_item *item)
{
 switch (item->size) {
 case 1: return item->data.s8;
 case 2: return item->data.s16;
 case 4: return item->data.s32;
 }
 return 0;
}
