
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spu_context {void* prof_priv_kref; } ;



void *spu_get_profile_private_kref(struct spu_context *ctx)
{
 return ctx->prof_priv_kref;
}
