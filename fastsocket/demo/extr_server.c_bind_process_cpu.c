
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cpu_set_t ;


 int CPU_SET (int,int *) ;
 int CPU_ZERO (int *) ;
 int EINVAL ;
 int errno ;
 size_t get_cpu_num () ;
 int sched_setaffinity (int ,size_t,int *) ;

int bind_process_cpu(int cpu)
{
 cpu_set_t cmask;
 size_t n;
 int ret;

 n = get_cpu_num();

 if (cpu < 0 || cpu >= (int)n) {
  errno = EINVAL;
  return -1;
 }

 CPU_ZERO(&cmask);
 CPU_SET(cpu, &cmask);

 ret = sched_setaffinity(0, n, &cmask);

 CPU_ZERO(&cmask);

 return ret;
}
