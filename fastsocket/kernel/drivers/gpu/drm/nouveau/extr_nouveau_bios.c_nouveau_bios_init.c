
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvbios {int major_version; int execute; int is_mobile; } ;
struct nouveau_drm {struct nvbios vbios; } ;
struct drm_device {int dummy; } ;


 int ENODEV ;
 int NVInitVBIOS (struct drm_device*) ;
 int NVReadVgaCrtc (struct drm_device*,int ,int ) ;
 int NV_CIO_CRE_4B ;
 int NV_INFO (struct nouveau_drm*,char*) ;
 int nouveau_bios_posted (struct drm_device*) ;
 struct nouveau_drm* nouveau_drm (struct drm_device*) ;
 int nouveau_run_vbios_init (struct drm_device*) ;
 int parse_dcb_table (struct drm_device*,struct nvbios*) ;
 int parse_fp_mode_table (struct drm_device*,struct nvbios*) ;

int
nouveau_bios_init(struct drm_device *dev)
{
 struct nouveau_drm *drm = nouveau_drm(dev);
 struct nvbios *bios = &drm->vbios;
 int ret;

 if (!NVInitVBIOS(dev))
  return -ENODEV;

 ret = parse_dcb_table(dev, bios);
 if (ret)
  return ret;

 if (!bios->major_version)
  return 0;


 bios->execute = 0;


 if (!nouveau_bios_posted(dev)) {
  NV_INFO(drm, "Adaptor not initialised, "
   "running VBIOS init tables.\n");
  bios->execute = 1;
 }

 ret = nouveau_run_vbios_init(dev);
 if (ret)
  return ret;


 if (bios->major_version < 5)
  bios->is_mobile = NVReadVgaCrtc(dev, 0, NV_CIO_CRE_4B) & 0x40;


 if (bios->is_mobile || bios->major_version >= 5)
  ret = parse_fp_mode_table(dev, bios);


 bios->execute = 1;

 return 0;
}
