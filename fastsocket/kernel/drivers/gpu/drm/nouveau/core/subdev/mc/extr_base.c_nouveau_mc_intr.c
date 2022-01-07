
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nouveau_subdev {int (* intr ) (struct nouveau_subdev*) ;} ;
struct nouveau_mc_intr {int stat; int unit; } ;
struct nouveau_mc {struct nouveau_mc_intr* intr_map; } ;


 struct nouveau_mc* nouveau_mc (struct nouveau_subdev*) ;
 struct nouveau_subdev* nouveau_subdev (struct nouveau_subdev*,int ) ;
 int nv_error (struct nouveau_mc*,char*,int) ;
 int nv_rd32 (struct nouveau_mc*,int) ;
 int stub1 (struct nouveau_subdev*) ;

void
nouveau_mc_intr(struct nouveau_subdev *subdev)
{
 struct nouveau_mc *pmc = nouveau_mc(subdev);
 const struct nouveau_mc_intr *map = pmc->intr_map;
 struct nouveau_subdev *unit;
 u32 stat, intr;

 intr = stat = nv_rd32(pmc, 0x000100);
 while (stat && map->stat) {
  if (stat & map->stat) {
   unit = nouveau_subdev(subdev, map->unit);
   if (unit && unit->intr)
    unit->intr(unit);
   intr &= ~map->stat;
  }
  map++;
 }

 if (intr) {
  nv_error(pmc, "unknown intr 0x%08x\n", stat);
 }
}
