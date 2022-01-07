
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int regions; int * region; int (* prog ) (struct nouveau_fb*,int,int *) ;} ;
struct nouveau_fb {TYPE_1__ tile; int base; } ;


 int nouveau_subdev_init (int *) ;
 int stub1 (struct nouveau_fb*,int,int *) ;

int
nouveau_fb_init(struct nouveau_fb *pfb)
{
 int ret, i;

 ret = nouveau_subdev_init(&pfb->base);
 if (ret)
  return ret;

 for (i = 0; i < pfb->tile.regions; i++)
  pfb->tile.prog(pfb, i, &pfb->tile.region[i]);

 return 0;
}
