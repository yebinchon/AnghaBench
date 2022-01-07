
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elf_prpsinfo {char pr_sname; int pr_fname; } ;
typedef int prpsinfo ;


 int KEXEC_CORE_NOTE_NAME ;
 int NT_PRPSINFO ;
 int memset (struct elf_prpsinfo*,int ,int) ;
 void* nt_init (void*,int ,struct elf_prpsinfo*,int,int ) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static void *nt_prpsinfo(void *ptr)
{
 struct elf_prpsinfo prpsinfo;

 memset(&prpsinfo, 0, sizeof(prpsinfo));
 prpsinfo.pr_sname = 'R';
 strcpy(prpsinfo.pr_fname, "vmlinux");
 return nt_init(ptr, NT_PRPSINFO, &prpsinfo, sizeof(prpsinfo),
         KEXEC_CORE_NOTE_NAME);
}
