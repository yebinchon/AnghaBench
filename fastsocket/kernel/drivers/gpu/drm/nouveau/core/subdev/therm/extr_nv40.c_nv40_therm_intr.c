
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct nouveau_therm {int dummy; } ;
struct nouveau_subdev {int dummy; } ;


 struct nouveau_therm* nouveau_therm (struct nouveau_subdev*) ;
 int nv_error (struct nouveau_therm*,char*,int ) ;
 int nv_rd32 (struct nouveau_therm*,int) ;
 int nv_wr32 (struct nouveau_therm*,int,int) ;

__attribute__((used)) static void
nv40_therm_intr(struct nouveau_subdev *subdev)
{
 struct nouveau_therm *therm = nouveau_therm(subdev);
 uint32_t stat = nv_rd32(therm, 0x1100);




 nv_wr32(therm, 0x1100, 0x70000);

 nv_error(therm, "THERM received an IRQ: stat = %x\n", stat);
}
