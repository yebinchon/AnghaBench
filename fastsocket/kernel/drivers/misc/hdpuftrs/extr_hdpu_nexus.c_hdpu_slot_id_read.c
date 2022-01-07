
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int seq_printf (struct seq_file*,char*,int ) ;
 int slot_id ;

__attribute__((used)) static int hdpu_slot_id_read(struct seq_file *seq, void *offset)
{
 seq_printf(seq, "%d\n", slot_id);
 return 0;
}
