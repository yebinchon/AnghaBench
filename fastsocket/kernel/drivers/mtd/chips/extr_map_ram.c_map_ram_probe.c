
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {int size; int writesize; int erasesize; int flags; int sync; int write; int read; int get_unmapped_area; int erase; int type; int name; struct map_info* priv; } ;
struct map_info {int size; int name; int * fldrv; } ;


 int GFP_KERNEL ;
 int MTD_CAP_RAM ;
 int MTD_RAM ;
 int PAGE_SIZE ;
 int THIS_MODULE ;
 int __module_get (int ) ;
 struct mtd_info* kzalloc (int,int ) ;
 int map_read8 (struct map_info*,int) ;
 int map_write8 (struct map_info*,int,int) ;
 int mapram_chipdrv ;
 int mapram_erase ;
 int mapram_nop ;
 int mapram_read ;
 int mapram_unmapped_area ;
 int mapram_write ;

__attribute__((used)) static struct mtd_info *map_ram_probe(struct map_info *map)
{
 struct mtd_info *mtd;
 mtd = kzalloc(sizeof(*mtd), GFP_KERNEL);
 if (!mtd)
  return ((void*)0);

 map->fldrv = &mapram_chipdrv;
 mtd->priv = map;
 mtd->name = map->name;
 mtd->type = MTD_RAM;
 mtd->size = map->size;
 mtd->erase = mapram_erase;
 mtd->get_unmapped_area = mapram_unmapped_area;
 mtd->read = mapram_read;
 mtd->write = mapram_write;
 mtd->sync = mapram_nop;
 mtd->flags = MTD_CAP_RAM;
 mtd->writesize = 1;

 mtd->erasesize = PAGE_SIZE;
  while(mtd->size & (mtd->erasesize - 1))
  mtd->erasesize >>= 1;

 __module_get(THIS_MODULE);
 return mtd;
}
