
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvc0_graph_chan {int base; int mmio; int mmio_vma; TYPE_1__* data; } ;
struct nouveau_object {int dummy; } ;
struct TYPE_2__ {int mem; int vma; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int nouveau_gpuobj_ref (int *,int *) ;
 int nouveau_gpuobj_unmap (int *) ;
 int nouveau_graph_context_destroy (int *) ;

void
nvc0_graph_context_dtor(struct nouveau_object *object)
{
 struct nvc0_graph_chan *chan = (void *)object;
 int i;

 for (i = 0; i < ARRAY_SIZE(chan->data); i++) {
  nouveau_gpuobj_unmap(&chan->data[i].vma);
  nouveau_gpuobj_ref(((void*)0), &chan->data[i].mem);
 }

 nouveau_gpuobj_unmap(&chan->mmio_vma);
 nouveau_gpuobj_ref(((void*)0), &chan->mmio);

 nouveau_graph_context_destroy(&chan->base);
}
