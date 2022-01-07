
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int event; } ;
struct TYPE_4__ {TYPE_1__ vblank; } ;
struct nv50_software_chan {TYPE_2__ base; } ;
struct nouveau_object {int parent; } ;
struct nouveau_disp {int vblank; } ;


 int EINVAL ;
 struct nouveau_disp* nouveau_disp (struct nouveau_object*) ;
 int nouveau_event_get (int ,int,int *) ;
 scalar_t__ nv_engctx (int ) ;

__attribute__((used)) static int
nv50_software_mthd_vblsem_release(struct nouveau_object *object, u32 mthd,
      void *args, u32 size)
{
 struct nv50_software_chan *chan = (void *)nv_engctx(object->parent);
 struct nouveau_disp *disp = nouveau_disp(object);
 u32 crtc = *(u32 *)args;
 if (crtc > 1)
  return -EINVAL;

 nouveau_event_get(disp->vblank, crtc, &chan->base.vblank.event);
 return 0;
}
