
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ len; } ;
struct nv50_pm_state {TYPE_1__ eclk_hwsq; TYPE_1__ mclk_hwsq; int mscript; } ;
struct nouveau_device {int dummy; } ;
struct drm_device {int dummy; } ;
struct bit_entry {int version; int length; int * data; } ;


 int EBUSY ;
 int ROM16 (int ) ;
 int bit_table (struct drm_device*,char,struct bit_entry*) ;
 int kfree (struct nv50_pm_state*) ;
 int nouveau_bios_init_exec (struct drm_device*,int ) ;
 struct nouveau_device* nouveau_dev (struct drm_device*) ;
 int nv_mask (struct nouveau_device*,int,int,int) ;
 int nv_wait (struct nouveau_device*,int,int,int) ;
 int prog_hwsq (struct drm_device*,TYPE_1__*) ;

int
nv50_pm_clocks_set(struct drm_device *dev, void *data)
{
 struct nouveau_device *device = nouveau_dev(dev);
 struct nv50_pm_state *info = data;
 struct bit_entry M;
 int ret = -EBUSY;


 nv_mask(device, 0x002504, 0x00000001, 0x00000001);
 if (!nv_wait(device, 0x002504, 0x00000010, 0x00000010))
  goto resume;
 if (!nv_wait(device, 0x00251c, 0x0000003f, 0x0000003f))
  goto resume;





 if (info->mclk_hwsq.len) {

  if (!bit_table(dev, 'M', &M) && M.version == 1) {
   if (M.length >= 6)
    nouveau_bios_run_init_table((dev), (ROM16(M.data[5])), ((void*)0), 0);
   if (M.length >= 8)
    nouveau_bios_run_init_table((dev), (ROM16(M.data[7])), ((void*)0), 0);
   if (M.length >= 10)
    nouveau_bios_run_init_table((dev), (ROM16(M.data[9])), ((void*)0), 0);
   nouveau_bios_run_init_table((dev), (info->mscript), ((void*)0), 0);
  }

  ret = prog_hwsq(dev, &info->mclk_hwsq);
  if (ret)
   goto resume;
 }


 ret = prog_hwsq(dev, &info->eclk_hwsq);

resume:
 nv_mask(device, 0x002504, 0x00000001, 0x00000000);
 kfree(info);
 return ret;
}
