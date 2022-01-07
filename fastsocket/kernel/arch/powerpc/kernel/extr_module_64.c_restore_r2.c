
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct module {int name; } ;


 int PPC_INST_NOP ;
 int printk (char*,int ,int) ;

__attribute__((used)) static int restore_r2(u32 *instruction, struct module *me)
{
 if (*instruction != PPC_INST_NOP) {
  printk("%s: Expect noop after relocate, got %08x\n",
         me->name, *instruction);
  return 0;
 }
 *instruction = 0xe8410028;
 return 1;
}
