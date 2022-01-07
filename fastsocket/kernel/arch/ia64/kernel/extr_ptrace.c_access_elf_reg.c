
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unw_frame_info {int dummy; } ;
struct task_struct {int dummy; } ;


 unsigned long ELF_BR_OFFSET (int) ;
 unsigned long ELF_GR_OFFSET (int) ;
 int access_elf_areg (struct task_struct*,struct unw_frame_info*,unsigned long,unsigned long*,int) ;
 int access_elf_breg (struct task_struct*,struct unw_frame_info*,unsigned long,unsigned long*,int) ;
 int access_elf_gpreg (struct task_struct*,struct unw_frame_info*,unsigned long,unsigned long*,int) ;

__attribute__((used)) static int
access_elf_reg(struct task_struct *target, struct unw_frame_info *info,
  unsigned long addr, unsigned long *data, int write_access)
{
 if (addr >= ELF_GR_OFFSET(1) && addr <= ELF_GR_OFFSET(15))
  return access_elf_gpreg(target, info, addr, data, write_access);
 else if (addr >= ELF_BR_OFFSET(0) && addr <= ELF_BR_OFFSET(7))
  return access_elf_breg(target, info, addr, data, write_access);
 else
  return access_elf_areg(target, info, addr, data, write_access);
}
