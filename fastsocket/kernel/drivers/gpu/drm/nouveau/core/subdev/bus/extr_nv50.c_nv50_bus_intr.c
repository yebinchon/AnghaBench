
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nouveau_subdev {int (* intr ) (struct nouveau_subdev*) ;} ;
struct nouveau_bus {int dummy; } ;


 int NVDEV_SUBDEV_THERM ;
 struct nouveau_bus* nouveau_bus (struct nouveau_subdev*) ;
 struct nouveau_subdev* nouveau_subdev (struct nouveau_bus*,int ) ;
 int nv_error (struct nouveau_bus*,char*,...) ;
 int nv_mask (struct nouveau_bus*,int,int,int ) ;
 int nv_rd32 (struct nouveau_bus*,int) ;
 int nv_wr32 (struct nouveau_bus*,int,int) ;
 int stub1 (struct nouveau_subdev*) ;

__attribute__((used)) static void
nv50_bus_intr(struct nouveau_subdev *subdev)
{
 struct nouveau_bus *pbus = nouveau_bus(subdev);
 u32 stat = nv_rd32(pbus, 0x001100) & nv_rd32(pbus, 0x001140);

 if (stat & 0x00000008) {
  u32 addr = nv_rd32(pbus, 0x009084);
  u32 data = nv_rd32(pbus, 0x009088);

  nv_error(pbus, "MMIO %s of 0x%08x FAULT at 0x%06x\n",
    (addr & 0x00000002) ? "write" : "read", data,
    (addr & 0x00fffffc));

  stat &= ~0x00000008;
  nv_wr32(pbus, 0x001100, 0x00000008);
 }

 if (stat & 0x00010000) {
  subdev = nouveau_subdev(pbus, NVDEV_SUBDEV_THERM);
  if (subdev && subdev->intr)
   subdev->intr(subdev);
  stat &= ~0x00010000;
  nv_wr32(pbus, 0x001100, 0x00010000);
 }

 if (stat) {
  nv_error(pbus, "unknown intr 0x%08x\n", stat);
  nv_mask(pbus, 0x001140, stat, 0);
 }
}
