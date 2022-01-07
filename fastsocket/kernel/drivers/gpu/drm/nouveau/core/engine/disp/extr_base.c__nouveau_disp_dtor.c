
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_object {int dummy; } ;
struct nouveau_disp {int base; int vblank; } ;


 int nouveau_engine_destroy (int *) ;
 int nouveau_event_destroy (int *) ;

void
_nouveau_disp_dtor(struct nouveau_object *object)
{
 struct nouveau_disp *disp = (void *)object;
 nouveau_event_destroy(&disp->vblank);
 nouveau_engine_destroy(&disp->base);
}
