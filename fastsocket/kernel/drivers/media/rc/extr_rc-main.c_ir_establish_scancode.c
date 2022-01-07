
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct rc_map_table {int dummy; } ;
struct rc_map {unsigned int len; unsigned int size; TYPE_1__* scan; } ;
struct rc_dev {int scanmask; } ;
struct TYPE_3__ {unsigned int scancode; int keycode; } ;


 int GFP_ATOMIC ;
 int KEY_RESERVED ;
 scalar_t__ ir_resize_table (struct rc_map*,int ) ;
 int memmove (TYPE_1__*,TYPE_1__*,unsigned int) ;

__attribute__((used)) static unsigned int ir_establish_scancode(struct rc_dev *dev,
       struct rc_map *rc_map,
       unsigned int scancode,
       bool resize)
{
 unsigned int i;
 if (dev->scanmask)
  scancode &= dev->scanmask;


 for (i = 0; i < rc_map->len; i++) {
  if (rc_map->scan[i].scancode == scancode)
   return i;


  if (rc_map->scan[i].scancode >= scancode)
   break;
 }


 if (rc_map->size == rc_map->len) {
  if (!resize || ir_resize_table(rc_map, GFP_ATOMIC))
   return -1U;
 }


 if (i < rc_map->len)
  memmove(&rc_map->scan[i + 1], &rc_map->scan[i],
   (rc_map->len - i) * sizeof(struct rc_map_table));
 rc_map->scan[i].scancode = scancode;
 rc_map->scan[i].keycode = KEY_RESERVED;
 rc_map->len++;

 return i;
}
