
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
typedef int atomic_long_t ;


 unsigned long atomic_long_read (int *) ;
 int seq_printf (struct seq_file*,char*,unsigned long,char*) ;

__attribute__((used)) static void printstat_val(struct seq_file *s, atomic_long_t *v, char *id)
{
 unsigned long val = atomic_long_read(v);

 seq_printf(s, "%16lu %s\n", val, id);
}
