
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned long got_size; unsigned long plt_size; struct mod_arch_syminfo* syminfo; } ;
struct module {TYPE_1__ arch; } ;
struct mod_arch_syminfo {unsigned long got_offset; unsigned long plt_offset; } ;
struct TYPE_5__ {int r_info; } ;
typedef TYPE_2__ Elf_Rela ;


 int ELF_R_SYM (int ) ;
 int ELF_R_TYPE (int ) ;
 unsigned long PLT_ENTRY_SIZE ;
__attribute__((used)) static void
check_rela(Elf_Rela *rela, struct module *me)
{
 struct mod_arch_syminfo *info;

 info = me->arch.syminfo + ELF_R_SYM (rela->r_info);
 switch (ELF_R_TYPE (rela->r_info)) {
 case 148:
 case 147:
 case 146:
 case 145:
 case 144:
 case 143:
 case 142:
 case 141:
 case 140:
 case 139:
 case 138:
 case 137:
  if (info->got_offset == -1UL) {
   info->got_offset = me->arch.got_size;
   me->arch.got_size += sizeof(void*);
  }
  break;
 case 135:
 case 133:
 case 134:
 case 132:
 case 131:
 case 130:
 case 129:
  if (info->plt_offset == -1UL) {
   info->plt_offset = me->arch.plt_size;
   me->arch.plt_size += PLT_ENTRY_SIZE;
  }
  break;
 case 150:
 case 149:
 case 136:
 case 128:


  break;
 }
}
