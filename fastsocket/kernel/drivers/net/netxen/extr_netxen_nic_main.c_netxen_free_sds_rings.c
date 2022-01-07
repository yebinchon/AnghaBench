
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netxen_recv_context {int * sds_rings; } ;


 int kfree (int *) ;

__attribute__((used)) static void
netxen_free_sds_rings(struct netxen_recv_context *recv_ctx)
{
 if (recv_ctx->sds_rings != ((void*)0))
  kfree(recv_ctx->sds_rings);

 recv_ctx->sds_rings = ((void*)0);
}
