
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nv50_instobj_priv {int base; int mem; } ;
struct nouveau_object {int dummy; } ;
struct TYPE_2__ {int (* put ) (struct nouveau_fb*,int *) ;} ;
struct nouveau_fb {TYPE_1__ ram; } ;


 struct nouveau_fb* nouveau_fb (struct nouveau_object*) ;
 int nouveau_instobj_destroy (int *) ;
 int stub1 (struct nouveau_fb*,int *) ;

__attribute__((used)) static void
nv50_instobj_dtor(struct nouveau_object *object)
{
 struct nv50_instobj_priv *node = (void *)object;
 struct nouveau_fb *pfb = nouveau_fb(object);
 pfb->ram.put(pfb, &node->mem);
 nouveau_instobj_destroy(&node->base);
}
