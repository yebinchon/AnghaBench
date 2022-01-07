
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpumask {int dummy; } ;


 int default_send_IPI_mask_allbutself_phys (struct cpumask const*,int) ;

__attribute__((used)) static void physflat_send_IPI_mask_allbutself(const struct cpumask *cpumask,
           int vector)
{
 default_send_IPI_mask_allbutself_phys(cpumask, vector);
}
