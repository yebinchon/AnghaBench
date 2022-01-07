
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct radeon_cs_parser {void* ring; TYPE_1__* rdev; int priority; } ;
typedef int s32 ;
struct TYPE_2__ {int family; } ;


 void* CAYMAN_RING_TYPE_CP1_INDEX ;
 void* CAYMAN_RING_TYPE_CP2_INDEX ;
 void* CAYMAN_RING_TYPE_DMA1_INDEX ;
 int CHIP_CAYMAN ;
 int CHIP_R600 ;
 int CHIP_TAHITI ;
 int DRM_ERROR (char*,int) ;
 int EINVAL ;
 void* R600_RING_TYPE_DMA_INDEX ;



 void* RADEON_RING_TYPE_GFX_INDEX ;

__attribute__((used)) static int radeon_cs_get_ring(struct radeon_cs_parser *p, u32 ring, s32 priority)
{
 p->priority = priority;

 switch (ring) {
 default:
  DRM_ERROR("unknown ring id: %d\n", ring);
  return -EINVAL;
 case 128:
  p->ring = RADEON_RING_TYPE_GFX_INDEX;
  break;
 case 130:
  if (p->rdev->family >= CHIP_TAHITI) {
   if (p->priority > 0)
    p->ring = CAYMAN_RING_TYPE_CP1_INDEX;
   else
    p->ring = CAYMAN_RING_TYPE_CP2_INDEX;
  } else
   p->ring = RADEON_RING_TYPE_GFX_INDEX;
  break;
 case 129:
  if (p->rdev->family >= CHIP_CAYMAN) {
   if (p->priority > 0)
    p->ring = R600_RING_TYPE_DMA_INDEX;
   else
    p->ring = CAYMAN_RING_TYPE_DMA1_INDEX;
  } else if (p->rdev->family >= CHIP_R600) {
   p->ring = R600_RING_TYPE_DMA_INDEX;
  } else {
   return -EINVAL;
  }
  break;
 }
 return 0;
}
