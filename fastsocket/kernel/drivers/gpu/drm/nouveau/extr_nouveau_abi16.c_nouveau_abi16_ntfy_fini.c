
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_abi16_ntfy {int head; int node; } ;
struct nouveau_abi16_chan {int heap; } ;


 int kfree (struct nouveau_abi16_ntfy*) ;
 int list_del (int *) ;
 int nouveau_mm_free (int *,int *) ;

__attribute__((used)) static void
nouveau_abi16_ntfy_fini(struct nouveau_abi16_chan *chan,
   struct nouveau_abi16_ntfy *ntfy)
{
 nouveau_mm_free(&chan->heap, &ntfy->node);
 list_del(&ntfy->head);
 kfree(ntfy);
}
