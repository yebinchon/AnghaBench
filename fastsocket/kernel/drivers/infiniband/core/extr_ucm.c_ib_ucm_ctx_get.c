
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_ucm_file {int dummy; } ;
struct ib_ucm_context {int ref; struct ib_ucm_file* file; } ;


 int EINVAL ;
 int ENOENT ;
 struct ib_ucm_context* ERR_PTR (int ) ;
 int atomic_inc (int *) ;
 int ctx_id_mutex ;
 int ctx_id_table ;
 struct ib_ucm_context* idr_find (int *,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static struct ib_ucm_context *ib_ucm_ctx_get(struct ib_ucm_file *file, int id)
{
 struct ib_ucm_context *ctx;

 mutex_lock(&ctx_id_mutex);
 ctx = idr_find(&ctx_id_table, id);
 if (!ctx)
  ctx = ERR_PTR(-ENOENT);
 else if (ctx->file != file)
  ctx = ERR_PTR(-EINVAL);
 else
  atomic_inc(&ctx->ref);
 mutex_unlock(&ctx_id_mutex);

 return ctx;
}
