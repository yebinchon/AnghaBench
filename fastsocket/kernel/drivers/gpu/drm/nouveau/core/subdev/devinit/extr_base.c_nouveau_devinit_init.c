
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_devinit {int post; int base; } ;


 int nouveau_subdev_init (int *) ;
 int nvbios_init (int *,int ) ;

int
nouveau_devinit_init(struct nouveau_devinit *devinit)
{
 int ret = nouveau_subdev_init(&devinit->base);
 if (ret)
  return ret;

 return nvbios_init(&devinit->base, devinit->post);
}
