
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_fence_chan {int lock; int pending; int flip; } ;


 int INIT_LIST_HEAD (int *) ;
 int spin_lock_init (int *) ;

void
nouveau_fence_context_new(struct nouveau_fence_chan *fctx)
{
 INIT_LIST_HEAD(&fctx->flip);
 INIT_LIST_HEAD(&fctx->pending);
 spin_lock_init(&fctx->lock);
}
