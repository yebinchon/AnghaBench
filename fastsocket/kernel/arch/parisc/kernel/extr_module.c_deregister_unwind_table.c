
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ unwind; } ;
struct module {TYPE_1__ arch; } ;


 int unwind_table_remove (scalar_t__) ;

__attribute__((used)) static void
deregister_unwind_table(struct module *me)
{
 if (me->arch.unwind)
  unwind_table_remove(me->arch.unwind);
}
