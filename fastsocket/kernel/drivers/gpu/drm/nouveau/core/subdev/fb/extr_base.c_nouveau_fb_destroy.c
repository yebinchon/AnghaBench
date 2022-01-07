
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int regions; int * region; int (* fini ) (struct nouveau_fb*,int,int *) ;} ;
struct nouveau_fb {int base; int vram; int tags; TYPE_1__ tile; } ;


 int nouveau_mm_fini (int *) ;
 int nouveau_subdev_destroy (int *) ;
 int stub1 (struct nouveau_fb*,int,int *) ;

void
nouveau_fb_destroy(struct nouveau_fb *pfb)
{
 int i;

 for (i = 0; i < pfb->tile.regions; i++)
  pfb->tile.fini(pfb, i, &pfb->tile.region[i]);
 nouveau_mm_fini(&pfb->tags);
 nouveau_mm_fini(&pfb->vram);

 nouveau_subdev_destroy(&pfb->base);
}
