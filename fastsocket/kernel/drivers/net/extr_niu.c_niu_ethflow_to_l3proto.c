
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;






 int IPPROTO_AH ;
 int IPPROTO_ESP ;
 int IPPROTO_SCTP ;
 int IPPROTO_TCP ;
 int IPPROTO_UDP ;







__attribute__((used)) static void niu_ethflow_to_l3proto(int flow_type, u8 *pid)
{
 switch (flow_type) {
 case 131:
 case 130:
  *pid = IPPROTO_TCP;
  break;
 case 129:
 case 128:
  *pid = IPPROTO_UDP;
  break;
 case 133:
 case 132:
  *pid = IPPROTO_SCTP;
  break;
 case 137:
 case 136:
  *pid = IPPROTO_AH;
  break;
 case 135:
 case 134:
  *pid = IPPROTO_ESP;
  break;
 default:
  *pid = 0;
  break;
 }
}
