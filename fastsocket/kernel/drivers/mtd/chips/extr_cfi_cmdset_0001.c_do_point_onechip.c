
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map_info {struct cfi_private* fldrv_priv; } ;
struct flchip {scalar_t__ state; int mutex; int ref_point_counter; scalar_t__ start; } ;
struct cfi_private {int dummy; } ;
typedef int loff_t ;


 int CMD (int) ;
 scalar_t__ FL_POINT ;
 scalar_t__ FL_READY ;
 int get_chip (struct map_info*,struct flchip*,unsigned long,scalar_t__) ;
 int map_bankwidth (struct map_info*) ;
 int map_write (struct map_info*,int ,unsigned long) ;
 int spin_lock (int ) ;
 int spin_unlock (int ) ;

__attribute__((used)) static int do_point_onechip (struct map_info *map, struct flchip *chip, loff_t adr, size_t len)
{
 unsigned long cmd_addr;
 struct cfi_private *cfi = map->fldrv_priv;
 int ret = 0;

 adr += chip->start;


 cmd_addr = adr & ~(map_bankwidth(map)-1);

 spin_lock(chip->mutex);

 ret = get_chip(map, chip, cmd_addr, FL_POINT);

 if (!ret) {
  if (chip->state != FL_POINT && chip->state != FL_READY)
   map_write(map, CMD(0xff), cmd_addr);

  chip->state = FL_POINT;
  chip->ref_point_counter++;
 }
 spin_unlock(chip->mutex);

 return ret;
}
