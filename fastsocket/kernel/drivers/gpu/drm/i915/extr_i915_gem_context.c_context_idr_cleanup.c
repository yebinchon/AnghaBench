
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_hw_context {int dummy; } ;


 int BUG_ON (int) ;
 int DEFAULT_CONTEXT_ID ;
 int do_destroy (struct i915_hw_context*) ;

__attribute__((used)) static int context_idr_cleanup(int id, void *p, void *data)
{
 struct i915_hw_context *ctx = p;

 BUG_ON(id == DEFAULT_CONTEXT_ID);

 do_destroy(ctx);

 return 0;
}
