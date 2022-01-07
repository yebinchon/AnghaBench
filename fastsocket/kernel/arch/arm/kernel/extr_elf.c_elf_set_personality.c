
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elf32_hdr {unsigned int e_flags; } ;


 unsigned int EF_ARM_APCS_26 ;
 unsigned int EF_ARM_EABI_MASK ;
 unsigned int EF_ARM_EABI_UNKNOWN ;
 unsigned int EF_ARM_SOFT_FLOAT ;
 int HWCAP_IWMMXT ;
 unsigned int PER_LINUX ;
 unsigned int PER_LINUX_32BIT ;
 int TIF_USING_IWMMXT ;
 int clear_thread_flag (int ) ;
 int elf_hwcap ;
 int set_personality (unsigned int) ;
 int set_thread_flag (int ) ;

void elf_set_personality(const struct elf32_hdr *x)
{
 unsigned int eflags = x->e_flags;
 unsigned int personality = PER_LINUX_32BIT;




 if ((eflags & EF_ARM_EABI_MASK) == EF_ARM_EABI_UNKNOWN) {
  if (eflags & EF_ARM_APCS_26)
   personality = PER_LINUX;
 }

 set_personality(personality);







 if (elf_hwcap & HWCAP_IWMMXT &&
     eflags & (EF_ARM_EABI_MASK | EF_ARM_SOFT_FLOAT)) {
  set_thread_flag(TIF_USING_IWMMXT);
 } else {
  clear_thread_flag(TIF_USING_IWMMXT);
 }
}
