
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpumask {int dummy; } ;


 int _flat_send_IPI_mask (unsigned long,int) ;
 unsigned long* cpumask_bits (struct cpumask const*) ;

__attribute__((used)) static void flat_send_IPI_mask(const struct cpumask *cpumask, int vector)
{
 unsigned long mask = cpumask_bits(cpumask)[0];

 _flat_send_IPI_mask(mask, vector);
}
