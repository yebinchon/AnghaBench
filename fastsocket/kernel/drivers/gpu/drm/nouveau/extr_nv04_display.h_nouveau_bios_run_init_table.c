
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct nvbios_init {int crtc; int execute; struct dcb_output* outp; int offset; struct nouveau_bios* bios; int subdev; } ;
struct nouveau_device {int dummy; } ;
struct nouveau_bios {int dummy; } ;
struct drm_device {int dummy; } ;
struct dcb_output {int dummy; } ;


 struct nouveau_bios* nouveau_bios (struct nouveau_device*) ;
 struct nouveau_device* nouveau_dev (struct drm_device*) ;
 int nv_subdev (struct nouveau_bios*) ;
 int nvbios_exec (struct nvbios_init*) ;

__attribute__((used)) static inline void
nouveau_bios_run_init_table(struct drm_device *dev, u16 table,
       struct dcb_output *outp, int crtc)
{
 struct nouveau_device *device = nouveau_dev(dev);
 struct nouveau_bios *bios = nouveau_bios(device);
 struct nvbios_init init = {
  .subdev = nv_subdev(bios),
  .bios = bios,
  .offset = table,
  .outp = outp,
  .crtc = crtc,
  .execute = 1,
 };

 nvbios_exec(&init);
}
