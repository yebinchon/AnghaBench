
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sym_nvram {int type; } ;






char *sym_nvram_type(struct sym_nvram *nvp)
{
 switch (nvp->type) {
 case 129:
  return "Symbios NVRAM";
 case 128:
  return "Tekram NVRAM";
 case 130:
  return "PA-RISC Firmware";
 default:
  return "No NVRAM";
 }
}
