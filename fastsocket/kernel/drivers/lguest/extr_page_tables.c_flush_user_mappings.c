
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lguest {TYPE_1__* pgdirs; int kernel_address; } ;
struct TYPE_2__ {scalar_t__ pgdir; } ;


 unsigned int pgd_index (int ) ;
 int release_pgd (scalar_t__) ;

__attribute__((used)) static void flush_user_mappings(struct lguest *lg, int idx)
{
 unsigned int i;

 for (i = 0; i < pgd_index(lg->kernel_address); i++)
  release_pgd(lg->pgdirs[idx].pgdir + i);
}
