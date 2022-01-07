
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i915_hw_context {TYPE_1__* ring; } ;
struct TYPE_2__ {struct i915_hw_context* default_context; } ;



__attribute__((used)) static inline bool is_default_context(struct i915_hw_context *ctx)
{
 return (ctx == ctx->ring->default_context);
}
