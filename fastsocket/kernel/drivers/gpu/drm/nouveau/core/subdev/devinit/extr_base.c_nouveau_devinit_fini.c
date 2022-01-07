
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_devinit {int post; int base; } ;


 int nouveau_subdev_fini (int *,int) ;

int
nouveau_devinit_fini(struct nouveau_devinit *devinit, bool suspend)
{

 if (suspend)
  devinit->post = 1;

 return nouveau_subdev_fini(&devinit->base, suspend);
}
