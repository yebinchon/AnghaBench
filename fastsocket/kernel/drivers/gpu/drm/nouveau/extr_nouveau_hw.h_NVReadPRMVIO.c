
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct nouveau_drm {int device; } ;
struct nouveau_device {int dummy; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ card_type; } ;


 scalar_t__ NV_40 ;
 scalar_t__ NV_PRMVIO_SIZE ;
 struct nouveau_device* nouveau_dev (struct drm_device*) ;
 struct nouveau_drm* nouveau_drm (struct drm_device*) ;
 TYPE_1__* nv_device (int ) ;
 int nv_rd08 (struct nouveau_device*,int ) ;

__attribute__((used)) static inline uint8_t NVReadPRMVIO(struct drm_device *dev,
     int head, uint32_t reg)
{
 struct nouveau_device *device = nouveau_dev(dev);
 struct nouveau_drm *drm = nouveau_drm(dev);
 uint8_t val;



 if (head && nv_device(drm->device)->card_type == NV_40)
  reg += NV_PRMVIO_SIZE;

 val = nv_rd08(device, reg);
 return val;
}
