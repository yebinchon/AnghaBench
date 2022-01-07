
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct plt_entry {scalar_t__* bundle; } ;
struct module {int dummy; } ;
struct insn {int dummy; } ;
typedef int int64_t ;


 scalar_t__ apply_imm60 (struct module*,struct insn*,int) ;
 scalar_t__ apply_imm64 (struct module*,struct insn*,unsigned long) ;

__attribute__((used)) static int
patch_plt (struct module *mod, struct plt_entry *plt, long target_ip, unsigned long target_gp)
{
 if (apply_imm64(mod, (struct insn *) (plt->bundle[0] + 2), target_gp)
     && apply_imm60(mod, (struct insn *) (plt->bundle[1] + 2),
      (target_ip - (int64_t) plt->bundle[1]) / 16))
  return 1;
 return 0;
}
