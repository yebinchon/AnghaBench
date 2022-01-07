
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xpc_channel {int dummy; } ;


 int XPC_CHCTL_MSGREQUEST ;
 int XPC_SEND_NOTIFY_IRQ_SN2 (struct xpc_channel*,int ,int *) ;

__attribute__((used)) static void
xpc_send_chctl_msgrequest_sn2(struct xpc_channel *ch)
{
 XPC_SEND_NOTIFY_IRQ_SN2(ch, XPC_CHCTL_MSGREQUEST, ((void*)0));
}
