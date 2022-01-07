
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *pan_type_s(int pan_type)
{
 switch (pan_type) {
 case 131:
  return "MOD_RS232DB25";
 case 129:
  return "MOD_RS232RJ45";
 case 128:
  return "MOD_RS422DB25";
 case 132:
  return "MOD_PARALLEL";
 case 136:
  return "MOD_2_RS232DB25";
 case 135:
  return "MOD_2_RS232RJ45";
 case 134:
  return "MOD_2_RS422DB25";
 case 130:
  return "MOD_RS232DB25MALE";
 case 137:
  return "MOD_2_PARALLEL";
 case 133:
  return "empty";
 default:
  return "invalid";
 }
}
