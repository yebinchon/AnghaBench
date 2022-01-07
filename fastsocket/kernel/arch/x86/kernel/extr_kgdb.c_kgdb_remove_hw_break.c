
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum kgdb_bptype { ____Placeholder_kgdb_bptype } kgdb_bptype ;
struct TYPE_2__ {unsigned long addr; scalar_t__ enabled; } ;


 TYPE_1__* breakinfo ;

__attribute__((used)) static int
kgdb_remove_hw_break(unsigned long addr, int len, enum kgdb_bptype bptype)
{
 int i;

 for (i = 0; i < 4; i++)
  if (breakinfo[i].addr == addr && breakinfo[i].enabled)
   break;
 if (i == 4)
  return -1;

 breakinfo[i].enabled = 0;

 return 0;
}
