
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {int writesize; int erasesize; int flags; int erase; int sync; int write; int read; int get_unmapped_area; int size; int type; int name; struct map_info* priv; } ;
struct map_info {int size; int name; int * fldrv; } ;


 int GFP_KERNEL ;
 int MTD_CAP_ROM ;
 int MTD_ROM ;
 int THIS_MODULE ;
 int __module_get (int ) ;
 struct mtd_info* kzalloc (int,int ) ;
 int maprom_chipdrv ;
 int maprom_erase ;
 int maprom_nop ;
 int maprom_read ;
 int maprom_unmapped_area ;
 int maprom_write ;

__attribute__((used)) static struct mtd_info *map_rom_probe(struct map_info *map)
{
 struct mtd_info *mtd;

 mtd = kzalloc(sizeof(*mtd), GFP_KERNEL);
 if (!mtd)
  return ((void*)0);

 map->fldrv = &maprom_chipdrv;
 mtd->priv = map;
 mtd->name = map->name;
 mtd->type = MTD_ROM;
 mtd->size = map->size;
 mtd->get_unmapped_area = maprom_unmapped_area;
 mtd->read = maprom_read;
 mtd->write = maprom_write;
 mtd->sync = maprom_nop;
 mtd->erase = maprom_erase;
 mtd->flags = MTD_CAP_ROM;
 mtd->erasesize = map->size;
 mtd->writesize = 1;

 __module_get(THIS_MODULE);
 return mtd;
}
