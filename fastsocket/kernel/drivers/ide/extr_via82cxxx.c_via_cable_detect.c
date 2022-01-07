
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct via82cxxx_dev {int via_80w; TYPE_1__* via_config; } ;
struct TYPE_2__ {int udma_mask; } ;






__attribute__((used)) static void via_cable_detect(struct via82cxxx_dev *vdev, u32 u)
{
 int i;

 switch (vdev->via_config->udma_mask) {
  case 130:
   for (i = 24; i >= 0; i -= 8)
    if (((u >> (i & 16)) & 8) &&
        ((u >> i) & 0x20) &&
         (((u >> i) & 7) < 2)) {




     vdev->via_80w |= (1 << (1 - (i >> 4)));
    }
   break;

  case 129:
   for (i = 24; i >= 0; i -= 8)
    if (((u >> i) & 0x10) ||
        (((u >> i) & 0x20) &&
         (((u >> i) & 7) < 4))) {



     vdev->via_80w |= (1 << (1 - (i >> 4)));
    }
   break;

  case 128:
   for (i = 24; i >= 0; i -= 8)
    if (((u >> i) & 0x10) ||
        (((u >> i) & 0x20) &&
         (((u >> i) & 7) < 6))) {



     vdev->via_80w |= (1 << (1 - (i >> 4)));
    }
   break;
 }
}
