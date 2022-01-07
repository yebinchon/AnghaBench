
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elf32_hdr {scalar_t__ e_machine; int e_flags; } ;
 int EF_FRV_CPU_MASK ;




 int EF_FRV_FPR_MASK ;



 int EF_FRV_GPR_MASK ;
 int EF_FRV_MULADD ;
 scalar_t__ EM_FRV ;
 unsigned long HSR0_FRN ;
 unsigned long HSR0_FRN_32 ;
 unsigned long HSR0_GRN ;
 unsigned long HSR0_GRN_32 ;
 scalar_t__ PSR_IMPLE (unsigned long) ;
 scalar_t__ PSR_IMPLE_FR401 ;
 scalar_t__ PSR_IMPLE_FR405 ;
 scalar_t__ PSR_IMPLE_FR451 ;
 scalar_t__ PSR_IMPLE_FR501 ;
 scalar_t__ PSR_IMPLE_FR551 ;
 unsigned long __get_HSR (int ) ;
 unsigned long __get_PSR () ;

int elf_check_arch(const struct elf32_hdr *hdr)
{
 unsigned long hsr0 = __get_HSR(0);
 unsigned long psr = __get_PSR();

 if (hdr->e_machine != EM_FRV)
  return 0;

 switch (hdr->e_flags & EF_FRV_GPR_MASK) {
 case 128:
  if ((hsr0 & HSR0_GRN) == HSR0_GRN_32)
   return 0;
 case 129:
 case 0:
  break;
 default:
  return 0;
 }

 switch (hdr->e_flags & EF_FRV_FPR_MASK) {
 case 131:
  if ((hsr0 & HSR0_FRN) == HSR0_FRN_32)
   return 0;
 case 132:
 case 130:
 case 0:
  break;
 default:
  return 0;
 }

 if ((hdr->e_flags & EF_FRV_MULADD) == EF_FRV_MULADD)
  if (PSR_IMPLE(psr) != PSR_IMPLE_FR405 &&
      PSR_IMPLE(psr) != PSR_IMPLE_FR451)
   return 0;

 switch (hdr->e_flags & EF_FRV_CPU_MASK) {
 case 135:
  break;
 case 140:
 case 134:
 case 133:
 default:
  return 0;
 case 139:
  if (PSR_IMPLE(psr) != PSR_IMPLE_FR401 &&
      PSR_IMPLE(psr) != PSR_IMPLE_FR405 &&
      PSR_IMPLE(psr) != PSR_IMPLE_FR451 &&
      PSR_IMPLE(psr) != PSR_IMPLE_FR551)
   return 0;
  break;
 case 138:
  if (PSR_IMPLE(psr) != PSR_IMPLE_FR451)
   return 0;
  break;
 case 137:
  if (PSR_IMPLE(psr) != PSR_IMPLE_FR501)
   return 0;
  break;
 case 136:
  if (PSR_IMPLE(psr) != PSR_IMPLE_FR551)
   return 0;
  break;
 }

 return 1;
}
