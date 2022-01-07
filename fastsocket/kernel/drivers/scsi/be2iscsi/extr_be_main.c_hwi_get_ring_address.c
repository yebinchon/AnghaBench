
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct phys_addr {int dummy; } ;
struct TYPE_4__ {struct phys_addr* ring_base; } ;
struct TYPE_3__ {struct phys_addr* ring_base; } ;
struct hwi_async_pdu_context {TYPE_2__ async_data; TYPE_1__ async_header; } ;



__attribute__((used)) static struct phys_addr *
hwi_get_ring_address(struct hwi_async_pdu_context *pasync_ctx,
       unsigned int is_header, unsigned int host_write_ptr)
{
 struct phys_addr *pasync_sge = ((void*)0);

 if (is_header)
  pasync_sge = pasync_ctx->async_header.ring_base;
 else
  pasync_sge = pasync_ctx->async_data.ring_base;

 return pasync_sge + host_write_ptr;
}
