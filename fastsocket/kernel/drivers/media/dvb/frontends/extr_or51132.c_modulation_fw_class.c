
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fe_modulation_t ;


 int MOD_FWCLASS_QAM ;
 int MOD_FWCLASS_UNKNOWN ;
 int MOD_FWCLASS_VSB ;





__attribute__((used)) static int modulation_fw_class(fe_modulation_t modulation)
{
 switch(modulation) {
 case 128:
  return MOD_FWCLASS_VSB;
 case 129:
 case 130:
 case 131:
  return MOD_FWCLASS_QAM;
 default:
  return MOD_FWCLASS_UNKNOWN;
 }
}
