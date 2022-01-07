
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nv50_mast {int dummy; } ;
struct nv50_disp {int sync; } ;
struct nouveau_device {int dummy; } ;
struct drm_device {int dummy; } ;


 int EBUSY ;
 int EVO_MAST_NTFY ;
 int evo_data (int *,int) ;
 int evo_kick (int *,struct nv50_mast*) ;
 int evo_mthd (int *,int,int) ;
 int evo_sync_wait ;
 int * evo_wait (struct nv50_mast*,int) ;
 int nouveau_bo_wr32 (int ,int,int) ;
 struct nouveau_device* nouveau_dev (struct drm_device*) ;
 struct nv50_disp* nv50_disp (struct drm_device*) ;
 struct nv50_mast* nv50_mast (struct drm_device*) ;
 scalar_t__ nv_wait_cb (struct nouveau_device*,int ,int ) ;

__attribute__((used)) static int
evo_sync(struct drm_device *dev)
{
 struct nouveau_device *device = nouveau_dev(dev);
 struct nv50_disp *disp = nv50_disp(dev);
 struct nv50_mast *mast = nv50_mast(dev);
 u32 *push = evo_wait(mast, 8);
 if (push) {
  nouveau_bo_wr32(disp->sync, EVO_MAST_NTFY, 0x00000000);
  evo_mthd(push, 0x0084, 1);
  evo_data(push, 0x80000000 | EVO_MAST_NTFY);
  evo_mthd(push, 0x0080, 2);
  evo_data(push, 0x00000000);
  evo_data(push, 0x00000000);
  evo_kick(push, mast);
  if (nv_wait_cb(device, evo_sync_wait, disp->sync))
   return 0;
 }

 return -EBUSY;
}
