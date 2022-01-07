
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void seq_file ;
typedef scalar_t__ loff_t ;



__attribute__((used)) static void *cpu_seq_start(struct seq_file *seq, loff_t *pos)
{
 if (*pos == 0)
  return seq;

 return ((void*)0);
}
