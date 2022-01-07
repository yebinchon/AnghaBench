
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_object {int dummy; } ;
struct nouveau_fb {int dummy; } ;


 int nouveau_fb_init (struct nouveau_fb*) ;

int
_nouveau_fb_init(struct nouveau_object *object)
{
 struct nouveau_fb *pfb = (void *)object;
 return nouveau_fb_init(pfb);
}
