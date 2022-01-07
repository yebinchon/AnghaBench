
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int seq_printf (struct seq_file*,char*,int ) ;
 int unit_id ;

__attribute__((used)) static int excite_unit_id_proc_show(struct seq_file *m, void *v)
{
 seq_printf(m, "%06x", unit_id);
 return 0;
}
