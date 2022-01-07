
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct kernel_ipmi_msg {unsigned char* data; int data_len; int cmd; int netfn; } ;
struct ipmi_system_interface_addr {scalar_t__ lun; int channel; int addr_type; } ;
struct ipmi_addr {int dummy; } ;
typedef TYPE_2__* ipmi_smi_t ;
struct TYPE_7__ {TYPE_1__* channels; } ;
struct TYPE_6__ {int lun; int address; } ;


 int IPMI_BMC_CHANNEL ;
 int IPMI_GET_CHANNEL_INFO_CMD ;
 int IPMI_NETFN_APP_REQUEST ;
 int IPMI_SYSTEM_INTERFACE_ADDR_TYPE ;
 int i_ipmi_request (int *,TYPE_2__*,struct ipmi_addr*,int ,struct kernel_ipmi_msg*,TYPE_2__*,int *,int *,int ,int ,int ,int,int ) ;

__attribute__((used)) static int
send_channel_info_cmd(ipmi_smi_t intf, int chan)
{
 struct kernel_ipmi_msg msg;
 unsigned char data[1];
 struct ipmi_system_interface_addr si;

 si.addr_type = IPMI_SYSTEM_INTERFACE_ADDR_TYPE;
 si.channel = IPMI_BMC_CHANNEL;
 si.lun = 0;

 msg.netfn = IPMI_NETFN_APP_REQUEST;
 msg.cmd = IPMI_GET_CHANNEL_INFO_CMD;
 msg.data = data;
 msg.data_len = 1;
 data[0] = chan;
 return i_ipmi_request(((void*)0),
         intf,
         (struct ipmi_addr *) &si,
         0,
         &msg,
         intf,
         ((void*)0),
         ((void*)0),
         0,
         intf->channels[0].address,
         intf->channels[0].lun,
         -1, 0);
}
