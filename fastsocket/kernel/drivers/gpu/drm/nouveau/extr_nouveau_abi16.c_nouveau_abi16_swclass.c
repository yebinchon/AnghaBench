
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct nouveau_drm {int device; } ;
struct TYPE_2__ {int card_type; } ;
 TYPE_1__* nv_device (int ) ;

u16
nouveau_abi16_swclass(struct nouveau_drm *drm)
{
 switch (nv_device(drm->device)->card_type) {
 case 136:
  return 0x006e;
 case 135:
 case 134:
 case 133:
 case 132:
  return 0x016e;
 case 131:
  return 0x506e;
 case 130:
 case 129:
 case 128:
  return 0x906e;
 }

 return 0x0000;
}
