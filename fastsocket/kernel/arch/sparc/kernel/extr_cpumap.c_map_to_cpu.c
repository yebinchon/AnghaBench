
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _map_to_cpu (unsigned int) ;
 int cpu_map_lock ;
 int cpu_online (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;

int map_to_cpu(unsigned int index)
{
 int mapped_cpu;
 unsigned long flag;

 spin_lock_irqsave(&cpu_map_lock, flag);
 mapped_cpu = _map_to_cpu(index);





 spin_unlock_irqrestore(&cpu_map_lock, flag);
 return mapped_cpu;
}
