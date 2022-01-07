
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cpumask_t ;


 int cpu_clear (int ,int ) ;
 int cpu_online_map ;
 int send_IPI_mask (int *,int,int) ;
 int smp_processor_id () ;

__attribute__((used)) static void send_IPI_allbutself(int ipi_num, int try)
{
 cpumask_t cpumask;

 cpumask = cpu_online_map;
 cpu_clear(smp_processor_id(), cpumask);

 send_IPI_mask(&cpumask, ipi_num, try);
}
