
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rsxx_dma {int dummy; } ;
struct dma_tracker_list {TYPE_1__* list; } ;
struct TYPE_2__ {struct rsxx_dma* dma; } ;



__attribute__((used)) static void set_tracker_dma(struct dma_tracker_list *trackers,
       int tag,
       struct rsxx_dma *dma)
{
 trackers->list[tag].dma = dma;
}
