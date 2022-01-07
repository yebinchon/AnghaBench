
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;






 int HSO_PORT_MASK ;


__attribute__((used)) static u32 hso_port_to_mux(int port)
{
 u32 result;

 switch (port & HSO_PORT_MASK) {
 case 130:
  result = 0x0;
  break;
 case 132:
  result = 0x1;
  break;
 case 128:
  result = 0x2;
  break;
 case 129:
  result = 0x3;
  break;
 case 131:
  result = 0x4;
  break;
 default:
  result = 0x0;
 }
 return result;
}
