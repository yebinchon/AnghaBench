
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucma_file {int ctx_list; } ;
struct ucma_context {int list; int id; struct ucma_file* file; int mc_list; int comp; int ref; } ;


 int EAGAIN ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int atomic_set (int *,int) ;
 int ctx_idr ;
 int idr_get_new (int *,struct ucma_context*,int *) ;
 int idr_pre_get (int *,int ) ;
 int init_completion (int *) ;
 int kfree (struct ucma_context*) ;
 struct ucma_context* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int mut ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static struct ucma_context *ucma_alloc_ctx(struct ucma_file *file)
{
 struct ucma_context *ctx;
 int ret;

 ctx = kzalloc(sizeof(*ctx), GFP_KERNEL);
 if (!ctx)
  return ((void*)0);

 atomic_set(&ctx->ref, 1);
 init_completion(&ctx->comp);
 INIT_LIST_HEAD(&ctx->mc_list);
 ctx->file = file;

 do {
  ret = idr_pre_get(&ctx_idr, GFP_KERNEL);
  if (!ret)
   goto error;

  mutex_lock(&mut);
  ret = idr_get_new(&ctx_idr, ctx, &ctx->id);
  mutex_unlock(&mut);
 } while (ret == -EAGAIN);

 if (ret)
  goto error;

 list_add_tail(&ctx->list, &file->ctx_list);
 return ctx;

error:
 kfree(ctx);
 return ((void*)0);
}
