
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_object {int dummy; } ;
struct nouveau_instobj {int dummy; } ;


 void nouveau_instobj_destroy (struct nouveau_instobj*) ;

void
_nouveau_instobj_dtor(struct nouveau_object *object)
{
 struct nouveau_instobj *iobj = (void *)object;
 return nouveau_instobj_destroy(iobj);
}
