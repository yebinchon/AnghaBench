
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
typedef size_t loff_t ;


 size_t ARRAY_SIZE (int *) ;
 int * regs ;

__attribute__((used)) static void *reg_start(struct seq_file *seq, loff_t *pos)
{
 return *pos < ARRAY_SIZE(regs) ? (void *)&regs[*pos] : ((void*)0);
}
