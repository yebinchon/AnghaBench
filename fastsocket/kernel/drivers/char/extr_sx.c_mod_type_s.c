
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *mod_type_s(int module_type)
{
 switch (module_type) {
 case 131:
  return "TA4";
 case 129:
  return "TA8";
 case 130:
  return "TA4_ASIC";
 case 128:
  return "TA8_ASIC";
 case 133:
  return "MTA_CD1400";
 case 132:
  return "SXDC";
 default:
  return "Unknown/invalid";
 }
}
