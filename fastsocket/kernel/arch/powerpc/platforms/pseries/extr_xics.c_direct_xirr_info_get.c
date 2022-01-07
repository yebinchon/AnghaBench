
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int word; } ;
struct TYPE_4__ {TYPE_1__ xirr; } ;


 unsigned int in_be32 (int *) ;
 int smp_processor_id () ;
 TYPE_2__** xics_per_cpu ;

__attribute__((used)) static inline unsigned int direct_xirr_info_get(void)
{
 int cpu = smp_processor_id();

 return in_be32(&xics_per_cpu[cpu]->xirr.word);
}
