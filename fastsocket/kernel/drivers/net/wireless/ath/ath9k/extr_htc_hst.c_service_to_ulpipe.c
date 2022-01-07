
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
__attribute__((used)) static u8 service_to_ulpipe(u16 service_id)
{
 switch (service_id) {
 case 134:
  return 4;
 case 136:
 case 135:
 case 128:
 case 129:
 case 130:
 case 131:
 case 133:
 case 132:
  return 1;
 default:
  return 0;
 }
}
