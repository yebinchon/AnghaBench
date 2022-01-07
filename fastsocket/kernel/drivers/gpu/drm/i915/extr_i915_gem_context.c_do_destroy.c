
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct i915_hw_context {TYPE_2__* obj; int id; TYPE_1__* file_priv; } ;
struct TYPE_4__ {int base; } ;
struct TYPE_3__ {int context_idr; } ;


 int drm_gem_object_unreference (int *) ;
 int idr_remove (int *,int ) ;
 int kfree (struct i915_hw_context*) ;

__attribute__((used)) static void do_destroy(struct i915_hw_context *ctx)
{
 if (ctx->file_priv)
  idr_remove(&ctx->file_priv->context_idr, ctx->id);

 drm_gem_object_unreference(&ctx->obj->base);
 kfree(ctx);
}
