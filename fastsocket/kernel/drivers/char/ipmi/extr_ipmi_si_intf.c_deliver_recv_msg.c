
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smi_info {int intf; } ;
struct ipmi_smi_msg {int dummy; } ;


 int ipmi_smi_msg_received (int ,struct ipmi_smi_msg*) ;

__attribute__((used)) static void deliver_recv_msg(struct smi_info *smi_info,
        struct ipmi_smi_msg *msg)
{

 ipmi_smi_msg_received(smi_info->intf, msg);
}
