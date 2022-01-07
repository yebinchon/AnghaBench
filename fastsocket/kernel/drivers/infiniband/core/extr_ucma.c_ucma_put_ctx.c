
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucma_context {int comp; int ref; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int complete (int *) ;

__attribute__((used)) static void ucma_put_ctx(struct ucma_context *ctx)
{
 if (atomic_dec_and_test(&ctx->ref))
  complete(&ctx->comp);
}
