
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pt_regs {int dummy; } ;
struct elf_prstatus {int pr_reg; } ;
typedef int prstatus ;


 int KEXEC_CORE_NOTE_NAME ;
 int NT_PRSTATUS ;
 int elf_core_copy_kernel_regs (int *,struct pt_regs*) ;
 int * fadump_append_elf_note (int *,int ,int ,struct elf_prstatus*,int) ;
 int memset (struct elf_prstatus*,int ,int) ;

__attribute__((used)) static u32 *fadump_regs_to_elf_notes(u32 *buf, struct pt_regs *regs)
{
 struct elf_prstatus prstatus;

 memset(&prstatus, 0, sizeof(prstatus));




 elf_core_copy_kernel_regs(&prstatus.pr_reg, regs);
 buf = fadump_append_elf_note(buf, KEXEC_CORE_NOTE_NAME, NT_PRSTATUS,
    &prstatus, sizeof(prstatus));
 return buf;
}
