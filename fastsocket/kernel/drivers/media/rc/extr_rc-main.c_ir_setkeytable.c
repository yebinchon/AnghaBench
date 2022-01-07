
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rc_map {unsigned int size; unsigned int len; TYPE_1__* scan; int alloc; int rc_type; int name; } ;
struct rc_dev {struct rc_map rc_map; } ;
struct TYPE_2__ {int keycode; int scancode; } ;


 int ENOMEM ;
 int IR_dprintk (int,char*,unsigned int,int ) ;
 int ir_create_table (struct rc_map*,int ,int ,unsigned int) ;
 unsigned int ir_establish_scancode (struct rc_dev*,struct rc_map*,int ,int) ;
 int ir_free_table (struct rc_map*) ;
 int ir_update_mapping (struct rc_dev*,struct rc_map*,unsigned int,int ) ;

__attribute__((used)) static int ir_setkeytable(struct rc_dev *dev,
     const struct rc_map *from)
{
 struct rc_map *rc_map = &dev->rc_map;
 unsigned int i, index;
 int rc;

 rc = ir_create_table(rc_map, from->name,
        from->rc_type, from->size);
 if (rc)
  return rc;

 IR_dprintk(1, "Allocated space for %u keycode entries (%u bytes)\n",
     rc_map->size, rc_map->alloc);

 for (i = 0; i < from->size; i++) {
  index = ir_establish_scancode(dev, rc_map,
           from->scan[i].scancode, 0);
  if (index >= rc_map->len) {
   rc = -ENOMEM;
   break;
  }

  ir_update_mapping(dev, rc_map, index,
      from->scan[i].keycode);
 }

 if (rc)
  ir_free_table(rc_map);

 return rc;
}
