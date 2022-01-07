
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xpc_rsvd_page {int dummy; } ;


 int xpc_send_local_activate_IRQ_sn2 (int) ;

__attribute__((used)) static void
xpc_request_partition_activation_sn2(struct xpc_rsvd_page *remote_rp,
         unsigned long remote_rp_pa, int nasid)
{
 xpc_send_local_activate_IRQ_sn2(nasid);
}
