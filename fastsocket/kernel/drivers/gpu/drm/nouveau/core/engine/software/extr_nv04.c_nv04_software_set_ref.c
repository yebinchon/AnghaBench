
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nouveau_object {scalar_t__ parent; } ;
struct nouveau_fifo_chan {int refcnt; } ;


 int atomic_set (int *,int ) ;
 scalar_t__ nv_engctx (scalar_t__) ;

__attribute__((used)) static int
nv04_software_set_ref(struct nouveau_object *object, u32 mthd,
        void *data, u32 size)
{
 struct nouveau_object *channel = (void *)nv_engctx(object->parent);
 struct nouveau_fifo_chan *fifo = (void *)channel->parent;
 atomic_set(&fifo->refcnt, *(u32*)data);
 return 0;
}
