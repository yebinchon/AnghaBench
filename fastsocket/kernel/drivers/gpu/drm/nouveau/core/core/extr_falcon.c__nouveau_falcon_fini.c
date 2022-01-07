
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nouveau_object {int dummy; } ;
struct TYPE_4__ {int * data; } ;
struct TYPE_3__ {int * data; } ;
struct nouveau_falcon {int base; TYPE_2__ code; TYPE_1__ data; scalar_t__ external; int core; } ;


 int kfree (int *) ;
 int nouveau_engine_fini (int *,int) ;
 int nouveau_gpuobj_ref (int *,int *) ;
 int nv_mo32 (struct nouveau_falcon*,int,int,int) ;
 int nv_wo32 (struct nouveau_falcon*,int,int) ;

int
_nouveau_falcon_fini(struct nouveau_object *object, bool suspend)
{
 struct nouveau_falcon *falcon = (void *)object;

 if (!suspend) {
  nouveau_gpuobj_ref(((void*)0), &falcon->core);
  if (falcon->external) {
   kfree(falcon->data.data);
   kfree(falcon->code.data);
   falcon->code.data = ((void*)0);
  }
 }

 nv_mo32(falcon, 0x048, 0x00000003, 0x00000000);
 nv_wo32(falcon, 0x014, 0xffffffff);

 return nouveau_engine_fini(&falcon->base, suspend);
}
