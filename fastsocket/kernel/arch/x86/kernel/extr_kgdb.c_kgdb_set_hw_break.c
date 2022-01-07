
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum kgdb_bptype { ____Placeholder_kgdb_bptype } kgdb_bptype ;
struct TYPE_2__ {int enabled; int len; unsigned long addr; unsigned int type; } ;





 TYPE_1__* breakinfo ;

__attribute__((used)) static int
kgdb_set_hw_break(unsigned long addr, int len, enum kgdb_bptype bptype)
{
 unsigned type;
 int i;

 for (i = 0; i < 4; i++)
  if (!breakinfo[i].enabled)
   break;
 if (i == 4)
  return -1;

 switch (bptype) {
 case 129:
  type = 0;
  len = 1;
  break;
 case 128:
  type = 1;
  break;
 case 130:
  type = 3;
  break;
 default:
  return -1;
 }

 if (len == 1 || len == 2 || len == 4)
  breakinfo[i].len = len - 1;
 else
  return -1;

 breakinfo[i].enabled = 1;
 breakinfo[i].addr = addr;
 breakinfo[i].type = type;

 return 0;
}
