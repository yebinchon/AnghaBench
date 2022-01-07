
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG () ;




__attribute__((used)) static inline const char *zmii_mode_name(int mode)
{
 switch (mode) {
 case 130:
  return "MII";
 case 129:
  return "RMII";
 case 128:
  return "SMII";
 default:
  BUG();
 }
}
