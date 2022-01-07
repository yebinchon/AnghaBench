
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct nouveau_drm {int dummy; } ;
struct drm_device {int dummy; } ;
struct dcb_output {int dummy; } ;


 int NVWriteVgaCrtc (struct drm_device*,int ,int ,int ) ;
 int NV_CIO_CRE_44 ;
 int NV_CIO_CRE_44_HEADA ;
 int NV_CIO_CRE_44_HEADB ;
 int NV_INFO (struct nouveau_drm*,char*,int ) ;
 int nouveau_bios_run_init_table (struct drm_device*,int ,struct dcb_output*,int) ;
 struct nouveau_drm* nouveau_drm (struct drm_device*) ;
 int nv04_dfp_bind_head (struct drm_device*,struct dcb_output*,int,int) ;

__attribute__((used)) static void
run_digital_op_script(struct drm_device *dev, uint16_t scriptptr,
        struct dcb_output *dcbent, int head, bool dl)
{
 struct nouveau_drm *drm = nouveau_drm(dev);

 NV_INFO(drm, "0x%04X: Parsing digital output script table\n",
   scriptptr);
 NVWriteVgaCrtc(dev, 0, NV_CIO_CRE_44, head ? NV_CIO_CRE_44_HEADB :
              NV_CIO_CRE_44_HEADA);
 nouveau_bios_run_init_table(dev, scriptptr, dcbent, head);

 nv04_dfp_bind_head(dev, dcbent, head, dl);
}
