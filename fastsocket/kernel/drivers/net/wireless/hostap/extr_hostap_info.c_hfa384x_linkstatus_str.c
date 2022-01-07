
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
__attribute__((used)) static const char* hfa384x_linkstatus_str(u16 linkstatus)
{
 switch (linkstatus) {
 case 129:
  return "Connected";
 case 128:
  return "Disconnected";
 case 133:
  return "Access point change";
 case 131:
  return "Access point out of range";
 case 132:
  return "Access point in range";
 case 130:
  return "Association failed";
 default:
  return "Unknown";
 }
}
