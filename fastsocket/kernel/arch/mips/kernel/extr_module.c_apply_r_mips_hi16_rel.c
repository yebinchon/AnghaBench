
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct module {int dummy; } ;
struct mips_hi16 {struct mips_hi16* next; int value; int * addr; } ;
typedef int Elf_Addr ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct mips_hi16* kmalloc (int,int ) ;
 struct mips_hi16* mips_hi16_list ;

__attribute__((used)) static int apply_r_mips_hi16_rel(struct module *me, u32 *location, Elf_Addr v)
{
 struct mips_hi16 *n;






 n = kmalloc(sizeof *n, GFP_KERNEL);
 if (!n)
  return -ENOMEM;

 n->addr = (Elf_Addr *)location;
 n->value = v;
 n->next = mips_hi16_list;
 mips_hi16_list = n;

 return 0;
}
