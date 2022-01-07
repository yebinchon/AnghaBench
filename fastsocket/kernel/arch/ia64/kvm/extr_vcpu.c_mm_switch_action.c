
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ia64_psr {int dummy; } ;


 size_t MODE_IND (struct ia64_psr) ;
 int** mm_switch_table ;

__attribute__((used)) static int mm_switch_action(struct ia64_psr opsr, struct ia64_psr npsr)
{
 return mm_switch_table[MODE_IND(opsr)][MODE_IND(npsr)];
}
