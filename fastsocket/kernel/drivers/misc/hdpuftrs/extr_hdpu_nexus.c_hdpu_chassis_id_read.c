
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int chassis_id ;
 int seq_printf (struct seq_file*,char*,int ) ;

__attribute__((used)) static int hdpu_chassis_id_read(struct seq_file *seq, void *offset)
{
 seq_printf(seq, "%d\n", chassis_id);
 return 0;
}
