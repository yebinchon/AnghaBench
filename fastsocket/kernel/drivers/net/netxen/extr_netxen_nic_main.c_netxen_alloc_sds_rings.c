
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nx_host_sds_ring {int dummy; } ;
struct netxen_recv_context {int * sds_rings; } ;


 int GFP_KERNEL ;
 int * kzalloc (int,int ) ;

__attribute__((used)) static int
netxen_alloc_sds_rings(struct netxen_recv_context *recv_ctx, int count)
{
 int size = sizeof(struct nx_host_sds_ring) * count;

 recv_ctx->sds_rings = kzalloc(size, GFP_KERNEL);

 return recv_ctx->sds_rings == ((void*)0);
}
