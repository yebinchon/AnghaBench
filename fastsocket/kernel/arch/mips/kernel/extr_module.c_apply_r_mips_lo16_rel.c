
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct module {int name; } ;
struct mips_hi16 {scalar_t__ value; unsigned long* addr; struct mips_hi16* next; } ;
typedef scalar_t__ Elf_Addr ;


 int ENOEXEC ;
 int kfree (struct mips_hi16*) ;
 struct mips_hi16* mips_hi16_list ;
 int pr_err (char*,int ) ;

__attribute__((used)) static int apply_r_mips_lo16_rel(struct module *me, u32 *location, Elf_Addr v)
{
 unsigned long insnlo = *location;
 Elf_Addr val, vallo;


 vallo = ((insnlo & 0xffff) ^ 0x8000) - 0x8000;

 if (mips_hi16_list != ((void*)0)) {
  struct mips_hi16 *l;

  l = mips_hi16_list;
  while (l != ((void*)0)) {
   struct mips_hi16 *next;
   unsigned long insn;




   if (v != l->value)
    goto out_danger;







   insn = *l->addr;
   val = ((insn & 0xffff) << 16) + vallo;
   val += v;





   val = ((val >> 16) + ((val & 0x8000) != 0)) & 0xffff;

   insn = (insn & ~0xffff) | val;
   *l->addr = insn;

   next = l->next;
   kfree(l);
   l = next;
  }

  mips_hi16_list = ((void*)0);
 }




 val = v + vallo;
 insnlo = (insnlo & ~0xffff) | (val & 0xffff);
 *location = insnlo;

 return 0;

out_danger:
 pr_err("module %s: dangerous R_MIPS_LO16 REL relocation\n", me->name);

 return -ENOEXEC;
}
