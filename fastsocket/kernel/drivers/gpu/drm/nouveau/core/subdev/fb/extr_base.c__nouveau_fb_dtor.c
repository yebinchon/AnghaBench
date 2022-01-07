
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_object {int dummy; } ;
struct nouveau_fb {int dummy; } ;


 int nouveau_fb_destroy (struct nouveau_fb*) ;

void
_nouveau_fb_dtor(struct nouveau_object *object)
{
 struct nouveau_fb *pfb = (void *)object;
 nouveau_fb_destroy(pfb);
}
