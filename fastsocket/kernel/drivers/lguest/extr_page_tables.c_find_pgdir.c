
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lguest {TYPE_1__* pgdirs; } ;
struct TYPE_2__ {unsigned long gpgdir; scalar_t__ pgdir; } ;


 unsigned int ARRAY_SIZE (TYPE_1__*) ;

__attribute__((used)) static unsigned int find_pgdir(struct lguest *lg, unsigned long pgtable)
{
 unsigned int i;
 for (i = 0; i < ARRAY_SIZE(lg->pgdirs); i++)
  if (lg->pgdirs[i].pgdir && lg->pgdirs[i].gpgdir == pgtable)
   break;
 return i;
}
