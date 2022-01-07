
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
typedef int loff_t ;


 void* cpu_seq_start (struct seq_file*,int *) ;

__attribute__((used)) static void *cpu_seq_next(struct seq_file *seq, void *v, loff_t *pos)
{
 (*pos)++;

 return cpu_seq_start(seq, pos);
}
