
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct nouveau_pm_tbl_entry {int RAM_FT1; int tCL; int tWR; } ;
struct nouveau_pm_memtiming {int drive_strength; int odt; int* mr; int id; } ;
struct nouveau_drm {int dummy; } ;
struct drm_device {int dummy; } ;


 int ERANGE ;
 int NV_DEBUG (struct nouveau_drm*,char*,int ,int,int) ;
 int NV_MEM_CL_GDDR5_MAX ;
 int NV_MEM_WR_GDDR5_MAX ;
 int NV_WARN (struct nouveau_drm*,char*,int ,int) ;
 struct nouveau_drm* nouveau_drm (struct drm_device*) ;

__attribute__((used)) static int
nouveau_mem_gddr5_mr(struct drm_device *dev, u32 freq,
       struct nouveau_pm_tbl_entry *e, u8 len,
       struct nouveau_pm_memtiming *boot,
       struct nouveau_pm_memtiming *t)
{
 struct nouveau_drm *drm = nouveau_drm(dev);

 if (len < 15) {
  t->drive_strength = boot->drive_strength;
  t->odt = boot->odt;
 } else {
  t->drive_strength = (e->RAM_FT1 & 0x30) >> 4;
  t->odt = e->RAM_FT1 & 0x03;
 }

 if (e->tCL >= NV_MEM_CL_GDDR5_MAX) {
  NV_WARN(drm, "(%u) Invalid tCL: %u", t->id, e->tCL);
  return -ERANGE;
 }

 if (e->tWR >= NV_MEM_WR_GDDR5_MAX) {
  NV_WARN(drm, "(%u) Invalid tWR: %u", t->id, e->tWR);
  return -ERANGE;
 }

 if (t->odt > 3) {
  NV_WARN(drm, "(%u) Invalid odt value, assuming autocal: %x",
   t->id, t->odt);
  t->odt = 0;
 }

 t->mr[0] = (boot->mr[0] & 0x007) |
     ((e->tCL - 5) << 3) |
     ((e->tWR - 4) << 8);
 t->mr[1] = (boot->mr[1] & 0x1007f0) |
     t->drive_strength |
     (t->odt << 2);

 NV_DEBUG(drm, "(%u) MR: %08x %08x", t->id, t->mr[0], t->mr[1]);
 return 0;
}
