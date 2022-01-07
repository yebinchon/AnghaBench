
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_bar {int base; scalar_t__ iomem; } ;


 int iounmap (scalar_t__) ;
 int nouveau_subdev_destroy (int *) ;

void
nouveau_bar_destroy(struct nouveau_bar *bar)
{
 if (bar->iomem)
  iounmap(bar->iomem);
 nouveau_subdev_destroy(&bar->base);
}
