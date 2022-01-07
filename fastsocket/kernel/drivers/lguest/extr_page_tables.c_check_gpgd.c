
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lg_cpu {TYPE_1__* lg; } ;
typedef int pgd_t ;
struct TYPE_2__ {scalar_t__ pfn_limit; } ;


 int CHECK_GPGD_MASK ;
 int kill_guest (struct lg_cpu*,char*) ;
 int pgd_flags (int ) ;
 scalar_t__ pgd_pfn (int ) ;

__attribute__((used)) static void check_gpgd(struct lg_cpu *cpu, pgd_t gpgd)
{
 if ((pgd_flags(gpgd) & ~CHECK_GPGD_MASK) ||
    (pgd_pfn(gpgd) >= cpu->lg->pfn_limit))
  kill_guest(cpu, "bad page directory entry");
}
