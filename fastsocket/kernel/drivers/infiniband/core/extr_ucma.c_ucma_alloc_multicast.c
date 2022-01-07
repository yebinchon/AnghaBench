
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucma_multicast {int list; struct ucma_context* ctx; int id; } ;
struct ucma_context {int mc_list; } ;


 int EAGAIN ;
 int GFP_KERNEL ;
 int idr_get_new (int *,struct ucma_multicast*,int *) ;
 int idr_pre_get (int *,int ) ;
 int kfree (struct ucma_multicast*) ;
 struct ucma_multicast* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int multicast_idr ;
 int mut ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static struct ucma_multicast* ucma_alloc_multicast(struct ucma_context *ctx)
{
 struct ucma_multicast *mc;
 int ret;

 mc = kzalloc(sizeof(*mc), GFP_KERNEL);
 if (!mc)
  return ((void*)0);

 do {
  ret = idr_pre_get(&multicast_idr, GFP_KERNEL);
  if (!ret)
   goto error;

  mutex_lock(&mut);
  ret = idr_get_new(&multicast_idr, mc, &mc->id);
  mutex_unlock(&mut);
 } while (ret == -EAGAIN);

 if (ret)
  goto error;

 mc->ctx = ctx;
 list_add_tail(&mc->list, &ctx->mc_list);
 return mc;

error:
 kfree(mc);
 return ((void*)0);
}
