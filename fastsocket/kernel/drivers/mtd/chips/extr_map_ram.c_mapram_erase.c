
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {struct map_info* priv; } ;
struct map_info {int dummy; } ;
struct erase_info {unsigned long len; int state; scalar_t__ addr; } ;
typedef int map_word ;


 int MTD_ERASE_DONE ;
 scalar_t__ map_bankwidth (struct map_info*) ;
 int map_word_ff (struct map_info*) ;
 int map_write (struct map_info*,int ,scalar_t__) ;
 int mtd_erase_callback (struct erase_info*) ;

__attribute__((used)) static int mapram_erase (struct mtd_info *mtd, struct erase_info *instr)
{


 struct map_info *map = mtd->priv;
 map_word allff;
 unsigned long i;

 allff = map_word_ff(map);

 for (i=0; i<instr->len; i += map_bankwidth(map))
  map_write(map, allff, instr->addr + i);

 instr->state = MTD_ERASE_DONE;

 mtd_erase_callback(instr);

 return 0;
}
