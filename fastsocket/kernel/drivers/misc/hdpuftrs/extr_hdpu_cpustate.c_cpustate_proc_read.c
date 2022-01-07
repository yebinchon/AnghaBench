
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int cpustate_get_state () ;
 int seq_printf (struct seq_file*,char*,int ) ;

__attribute__((used)) static int cpustate_proc_read(struct seq_file *seq, void *offset)
{
 seq_printf(seq, "CPU State: %04x\n", cpustate_get_state());
 return 0;
}
