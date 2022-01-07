
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nouveau_graph {int dummy; } ;
struct TYPE_2__ {scalar_t__ card_type; } ;


 int NV04_PGRAPH_STATUS ;
 int NV40_PGRAPH_STATUS_SYNC_STALL ;
 scalar_t__ NV_40 ;
 struct nouveau_graph* nouveau_graph (void*) ;
 TYPE_1__* nv_device (void*) ;
 int nv_error (struct nouveau_graph*,char*,int ) ;
 int nv_rd32 (struct nouveau_graph*,int ) ;
 int nv_wait (struct nouveau_graph*,int ,int,int ) ;

bool
nv04_graph_idle(void *obj)
{
 struct nouveau_graph *graph = nouveau_graph(obj);
 u32 mask = 0xffffffff;

 if (nv_device(obj)->card_type == NV_40)
  mask &= ~NV40_PGRAPH_STATUS_SYNC_STALL;

 if (!nv_wait(graph, NV04_PGRAPH_STATUS, mask, 0)) {
  nv_error(graph, "idle timed out with status 0x%08x\n",
    nv_rd32(graph, NV04_PGRAPH_STATUS));
  return 0;
 }

 return 1;
}
