
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int get_debugreg (unsigned long,int) ;
 int seq_printf (struct seq_file*,char*,...) ;

__attribute__((used)) static void print_dr(void *arg)
{
 struct seq_file *seq = arg;
 unsigned long dr;
 int i;

 for (i = 0; i < 8; i++) {

  if ((i == 4) || (i == 5))
   continue;
  get_debugreg(dr, i);
  seq_printf(seq, " dr%d\t: %016lx\n", i, dr);
 }

 seq_printf(seq, "\n MSR\t:\n");
}
