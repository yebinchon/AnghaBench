
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int read_cr0 () ;
 int read_cr2 () ;
 int read_cr3 () ;
 int read_cr4_safe () ;
 int read_cr8 () ;
 int seq_printf (struct seq_file*,char*,int ) ;

__attribute__((used)) static void print_cr(void *arg)
{
 struct seq_file *seq = arg;

 seq_printf(seq, " cr0\t: %016lx\n", read_cr0());
 seq_printf(seq, " cr2\t: %016lx\n", read_cr2());
 seq_printf(seq, " cr3\t: %016lx\n", read_cr3());
 seq_printf(seq, " cr4\t: %016lx\n", read_cr4_safe());



}
