
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
 int PORT_DA ;
 int PORT_FIBRE ;
 int PORT_OTHER ;
 int PORT_TP ;

__attribute__((used)) static u32 be_get_port_type(u32 phy_type, u32 dac_cable_len)
{
 u32 port;

 switch (phy_type) {
 case 133:
 case 132:
 case 129:
  port = PORT_TP;
  break;
 case 130:
  port = dac_cable_len ? PORT_DA : PORT_FIBRE;
  break;
 case 128:
 case 131:
  port = PORT_FIBRE;
  break;
 case 134:
  port = PORT_TP;
  break;
 default:
  port = PORT_OTHER;
 }

 return port;
}
