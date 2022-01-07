
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cpumask_t ;


 int default_server ;

__attribute__((used)) static int get_irq_server(unsigned int virq, cpumask_t cpumask,
     unsigned int strict_check)
{
 return default_server;
}
