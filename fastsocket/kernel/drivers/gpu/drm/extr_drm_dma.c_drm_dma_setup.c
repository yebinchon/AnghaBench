
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_device {TYPE_1__* dma; } ;
struct TYPE_2__ {int * bufs; } ;


 int DRM_MAX_ORDER ;
 int ENOMEM ;
 int GFP_KERNEL ;
 TYPE_1__* kzalloc (int,int ) ;
 int memset (int *,int ,int) ;

int drm_dma_setup(struct drm_device *dev)
{
 int i;

 dev->dma = kzalloc(sizeof(*dev->dma), GFP_KERNEL);
 if (!dev->dma)
  return -ENOMEM;

 for (i = 0; i <= DRM_MAX_ORDER; i++)
  memset(&dev->dma->bufs[i], 0, sizeof(dev->dma->bufs[0]));

 return 0;
}
