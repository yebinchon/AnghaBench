
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_object {int dummy; } ;


 int nouveau_object_init (struct nouveau_object*) ;

__attribute__((used)) static int
_nouveau_object_init(struct nouveau_object *object)
{
 return nouveau_object_init(object);
}
