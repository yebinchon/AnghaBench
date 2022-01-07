
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
typedef unsigned long loff_t ;


 unsigned long NR_CPUS ;

__attribute__((used)) static void *c_start(struct seq_file *m, loff_t *pos)
{
 unsigned long i = *pos;

 return i < NR_CPUS ? (void *) (i + 1) : ((void*)0);
}
