
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;
struct nouveau_mxm {int action; } ;
struct nouveau_device {int cfgopt; } ;
struct nouveau_bios {int dummy; } ;


 int EINVAL ;
 int MXM_SANITISE_DCB ;
 scalar_t__ mxm_shadow (struct nouveau_mxm*,int) ;
 int mxm_table (struct nouveau_bios*,int*,int*) ;
 int mxms_foreach (struct nouveau_mxm*,int ,int *,int *) ;
 int mxms_version (struct nouveau_mxm*) ;
 struct nouveau_bios* nouveau_bios (struct nouveau_device*) ;
 scalar_t__ nouveau_boolopt (int ,char*,int) ;
 int nouveau_subdev_create_ (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,int ,char*,char*,int,void**) ;
 int nv_debug (struct nouveau_mxm*,char*) ;
 struct nouveau_device* nv_device (struct nouveau_object*) ;
 int nv_info (struct nouveau_mxm*,char*,...) ;
 int nv_ro08 (struct nouveau_bios*,int ) ;

int
nouveau_mxm_create_(struct nouveau_object *parent,
      struct nouveau_object *engine,
      struct nouveau_oclass *oclass, int length, void **pobject)
{
 struct nouveau_device *device = nv_device(parent);
 struct nouveau_bios *bios = nouveau_bios(device);
 struct nouveau_mxm *mxm;
 u8 ver, len;
 u16 data;
 int ret;

 ret = nouveau_subdev_create_(parent, engine, oclass, 0, "MXM", "mxm",
         length, pobject);
 mxm = *pobject;
 if (ret)
  return ret;

 data = mxm_table(bios, &ver, &len);
 if (!data || !(ver = nv_ro08(bios, data))) {
  nv_debug(mxm, "no VBIOS data, nothing to do\n");
  return 0;
 }

 nv_info(mxm, "BIOS version %d.%d\n", ver >> 4, ver & 0x0f);

 if (mxm_shadow(mxm, ver)) {
  nv_info(mxm, "failed to locate valid SIS\n");
  return 0;

 }

 nv_info(mxm, "MXMS Version %d.%d\n",
  mxms_version(mxm) >> 8, mxms_version(mxm) & 0xff);
 mxms_foreach(mxm, 0, ((void*)0), ((void*)0));

 if (nouveau_boolopt(device->cfgopt, "NvMXMDCB", 1))
  mxm->action |= MXM_SANITISE_DCB;
 return 0;
}
