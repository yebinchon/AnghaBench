
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct nouveau_pm_tbl_entry {int tCL; int RAM_FT1; int tWR; int tCWL; } ;
struct nouveau_pm_memtiming {int odt; int* mr; int id; scalar_t__ drive_strength; } ;
struct nouveau_drm {int dummy; } ;
struct drm_device {int dummy; } ;


 int ERANGE ;
 int NV_DEBUG (struct nouveau_drm*,char*,int ,int,int) ;
 int NV_MEM_CL_DDR3_MAX ;
 int NV_MEM_WR_DDR3_MAX ;
 int NV_WARN (struct nouveau_drm*,char*,int ,int) ;
 struct nouveau_drm* nouveau_drm (struct drm_device*) ;
 int* nv_mem_wr_lut_ddr3 ;

__attribute__((used)) static int
nouveau_mem_ddr3_mr(struct drm_device *dev, u32 freq,
      struct nouveau_pm_tbl_entry *e, u8 len,
      struct nouveau_pm_memtiming *boot,
      struct nouveau_pm_memtiming *t)
{
 struct nouveau_drm *drm = nouveau_drm(dev);
 u8 cl = e->tCL - 4;

 t->drive_strength = 0;
 if (len < 15) {
  t->odt = boot->odt;
 } else {
  t->odt = e->RAM_FT1 & 0x07;
 }

 if (e->tCL >= NV_MEM_CL_DDR3_MAX || e->tCL < 4) {
  NV_WARN(drm, "(%u) Invalid tCL: %u", t->id, e->tCL);
  return -ERANGE;
 }

 if (e->tWR >= NV_MEM_WR_DDR3_MAX || e->tWR < 4) {
  NV_WARN(drm, "(%u) Invalid tWR: %u", t->id, e->tWR);
  return -ERANGE;
 }

 if (e->tCWL < 5) {
  NV_WARN(drm, "(%u) Invalid tCWL: %u", t->id, e->tCWL);
  return -ERANGE;
 }

 t->mr[0] = (boot->mr[0] & 0x180b) |

     (cl & 0x7) << 4 |
     (cl & 0x8) >> 1 |
     (nv_mem_wr_lut_ddr3[e->tWR]) << 9;
 t->mr[1] = (boot->mr[1] & 0x101dbb) |
     (t->odt & 0x1) << 2 |
     (t->odt & 0x2) << 5 |
     (t->odt & 0x4) << 7;
 t->mr[2] = (boot->mr[2] & 0x20ffb7) | (e->tCWL - 5) << 3;

 NV_DEBUG(drm, "(%u) MR: %08x %08x", t->id, t->mr[0], t->mr[2]);
 return 0;
}
