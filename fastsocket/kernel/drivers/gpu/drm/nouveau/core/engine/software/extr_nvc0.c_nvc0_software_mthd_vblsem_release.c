
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int event; } ;
struct TYPE_5__ {TYPE_1__ vblank; } ;
struct nvc0_software_chan {TYPE_2__ base; } ;
struct nouveau_object {int parent; } ;
struct nouveau_disp {int vblank; } ;
struct TYPE_6__ {scalar_t__ card_type; } ;


 int EINVAL ;
 scalar_t__ NV_E0 ;
 struct nouveau_disp* nouveau_disp (struct nouveau_object*) ;
 int nouveau_event_get (int ,int,int *) ;
 TYPE_3__* nv_device (struct nouveau_object*) ;
 scalar_t__ nv_engctx (int ) ;

__attribute__((used)) static int
nvc0_software_mthd_vblsem_release(struct nouveau_object *object, u32 mthd,
      void *args, u32 size)
{
 struct nvc0_software_chan *chan = (void *)nv_engctx(object->parent);
 struct nouveau_disp *disp = nouveau_disp(object);
 u32 crtc = *(u32 *)args;

 if ((nv_device(object)->card_type < NV_E0 && crtc > 1) || crtc > 3)
  return -EINVAL;

 nouveau_event_get(disp->vblank, crtc, &chan->base.vblank.event);
 return 0;
}
