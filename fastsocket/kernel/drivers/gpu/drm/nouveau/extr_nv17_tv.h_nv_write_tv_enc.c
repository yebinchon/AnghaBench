
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct drm_device {int dummy; } ;


 int NV_PTV_TV_DATA ;
 int NV_PTV_TV_INDEX ;
 int nv_write_ptv (struct drm_device*,int ,int ) ;

__attribute__((used)) static inline void nv_write_tv_enc(struct drm_device *dev, uint8_t reg,
       uint8_t val)
{
 nv_write_ptv(dev, NV_PTV_TV_INDEX, reg);
 nv_write_ptv(dev, NV_PTV_TV_DATA, val);
}
