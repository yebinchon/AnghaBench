
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct map_info {struct cfi_private* fldrv_priv; } ;
struct flchip {scalar_t__ state; int mutex; scalar_t__ start; } ;
struct cfi_private {int dummy; } ;
typedef int loff_t ;


 int CMD (int) ;
 scalar_t__ FL_POINT ;
 scalar_t__ FL_READY ;
 int get_chip (struct map_info*,struct flchip*,unsigned long,scalar_t__) ;
 int map_bankwidth (struct map_info*) ;
 int map_copy_from (struct map_info*,int *,int,size_t) ;
 int map_write (struct map_info*,int ,unsigned long) ;
 int put_chip (struct map_info*,struct flchip*,unsigned long) ;
 int spin_lock (int ) ;
 int spin_unlock (int ) ;

__attribute__((used)) static inline int do_read_onechip(struct map_info *map, struct flchip *chip, loff_t adr, size_t len, u_char *buf)
{
 unsigned long cmd_addr;
 struct cfi_private *cfi = map->fldrv_priv;
 int ret;

 adr += chip->start;


 cmd_addr = adr & ~(map_bankwidth(map)-1);

 spin_lock(chip->mutex);
 ret = get_chip(map, chip, cmd_addr, FL_READY);
 if (ret) {
  spin_unlock(chip->mutex);
  return ret;
 }

 if (chip->state != FL_POINT && chip->state != FL_READY) {
  map_write(map, CMD(0xff), cmd_addr);

  chip->state = FL_READY;
 }

 map_copy_from(map, buf, adr, len);

 put_chip(map, chip, cmd_addr);

 spin_unlock(chip->mutex);
 return 0;
}
