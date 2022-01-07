
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atom_context {struct atom_context* iio; } ;


 int kfree (struct atom_context*) ;

void atom_destroy(struct atom_context *ctx)
{
 kfree(ctx->iio);
 kfree(ctx);
}
