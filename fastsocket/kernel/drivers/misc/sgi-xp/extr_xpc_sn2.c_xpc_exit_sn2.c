
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SGI_XPC_ACTIVATE ;
 int free_irq (int ,int *) ;
 int kfree (int ) ;
 int xpc_disallow_IPI_ops_sn2 () ;
 int xpc_remote_copy_buffer_base_sn2 ;

void
xpc_exit_sn2(void)
{
 free_irq(SGI_XPC_ACTIVATE, ((void*)0));
 xpc_disallow_IPI_ops_sn2();
 kfree(xpc_remote_copy_buffer_base_sn2);
}
