
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_ucm_context {int comp; int ref; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int complete (int *) ;

__attribute__((used)) static void ib_ucm_ctx_put(struct ib_ucm_context *ctx)
{
 if (atomic_dec_and_test(&ctx->ref))
  complete(&ctx->comp);
}
