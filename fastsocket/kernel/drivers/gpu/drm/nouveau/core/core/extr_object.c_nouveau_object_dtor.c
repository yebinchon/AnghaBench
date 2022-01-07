
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nouveau_object {int dummy; } ;
struct TYPE_2__ {int (* dtor ) (struct nouveau_object*) ;} ;


 int nv_debug (struct nouveau_object*,char*) ;
 TYPE_1__* nv_ofuncs (struct nouveau_object*) ;
 int stub1 (struct nouveau_object*) ;

__attribute__((used)) static void
nouveau_object_dtor(struct nouveau_object *object)
{
 nv_debug(object, "destroying\n");
 nv_ofuncs(object)->dtor(object);
}
