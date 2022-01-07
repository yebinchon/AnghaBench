
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
typedef scalar_t__ loff_t ;


 scalar_t__ NR_CPUS ;
 void* cpu_data ;

__attribute__((used)) static void *c_start(struct seq_file *m, loff_t *pos)
{
 return *pos < NR_CPUS ? cpu_data + *pos : ((void*)0);
}
