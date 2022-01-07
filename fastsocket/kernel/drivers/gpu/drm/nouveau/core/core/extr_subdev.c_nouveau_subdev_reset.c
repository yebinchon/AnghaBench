
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nouveau_object {int dummy; } ;
struct TYPE_2__ {int (* fini ) (struct nouveau_object*,int) ;} ;


 int nv_debug (struct nouveau_object*,char*) ;
 TYPE_1__* nv_ofuncs (struct nouveau_object*) ;
 int nv_trace (struct nouveau_object*,char*) ;
 int stub1 (struct nouveau_object*,int) ;

void
nouveau_subdev_reset(struct nouveau_object *subdev)
{
 nv_trace(subdev, "resetting...\n");
 nv_ofuncs(subdev)->fini(subdev, 0);
 nv_debug(subdev, "reset\n");
}
