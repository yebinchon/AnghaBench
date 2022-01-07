
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int __nmi_count; } ;


 TYPE_1__ cpu_data (int) ;

__attribute__((used)) static inline unsigned int get_nmi_count(int cpu)
{
 return cpu_data(cpu).__nmi_count;
}
