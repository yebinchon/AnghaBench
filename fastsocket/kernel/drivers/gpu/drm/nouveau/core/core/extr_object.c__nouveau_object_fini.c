
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_object {int dummy; } ;


 int nouveau_object_fini (struct nouveau_object*,int) ;

__attribute__((used)) static int
_nouveau_object_fini(struct nouveau_object *object, bool suspend)
{
 return nouveau_object_fini(object, suspend);
}
