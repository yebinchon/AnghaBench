
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int r2; int funcaddr; } ;
struct ppc64_stub_entry {TYPE_1__ opd; int * jump; } ;
struct ppc64_opd_entry {int r2; int funcaddr; } ;
struct module {int name; } ;
typedef int Elf64_Shdr ;
typedef int Elf64_Half ;


 int DEBUGP (char*,struct ppc64_stub_entry*,long) ;
 int PPC_HA (long) ;
 int PPC_LO (long) ;
 unsigned long my_r2 (int *,struct module*) ;
 struct ppc64_stub_entry ppc64_stub ;
 int printk (char*,int ,void*,void*) ;

__attribute__((used)) static inline int create_stub(Elf64_Shdr *sechdrs,
         struct ppc64_stub_entry *entry,
         struct ppc64_opd_entry *opd,
         struct module *me)
{
 Elf64_Half *loc1, *loc2;
 long reladdr;

 *entry = ppc64_stub;

 loc1 = (Elf64_Half *)&entry->jump[2];
 loc2 = (Elf64_Half *)&entry->jump[6];


 reladdr = (unsigned long)entry - my_r2(sechdrs, me);
 if (reladdr > 0x7FFFFFFF || reladdr < -(0x80000000L)) {
  printk("%s: Address %p of stub out of range of %p.\n",
         me->name, (void *)reladdr, (void *)my_r2);
  return 0;
 }
 DEBUGP("Stub %p get data from reladdr %li\n", entry, reladdr);

 *loc1 = PPC_HA(reladdr);
 *loc2 = PPC_LO(reladdr);
 entry->opd.funcaddr = opd->funcaddr;
 entry->opd.r2 = opd->r2;
 return 1;
}
