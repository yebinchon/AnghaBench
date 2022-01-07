
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_4__ {int next_got_entry; scalar_t__ gp; TYPE_1__* got; } ;
struct module {TYPE_2__ arch; } ;
struct got_entry {scalar_t__ val; } ;
struct TYPE_3__ {scalar_t__ sh_size; scalar_t__ sh_addr; } ;


 int BUG_ON (int) ;

__attribute__((used)) static uint64_t
get_ltoff (struct module *mod, uint64_t value, int *okp)
{
 struct got_entry *got, *e;

 if (!*okp)
  return 0;

 got = (void *) mod->arch.got->sh_addr;
 for (e = got; e < got + mod->arch.next_got_entry; ++e)
  if (e->val == value)
   goto found;


 BUG_ON(e >= (struct got_entry *) (mod->arch.got->sh_addr + mod->arch.got->sh_size));

 e->val = value;
 ++mod->arch.next_got_entry;
  found:
 return (uint64_t) e - mod->arch.gp;
}
