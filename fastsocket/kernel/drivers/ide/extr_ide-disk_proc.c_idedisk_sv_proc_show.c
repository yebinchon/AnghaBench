
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int private; } ;


 int ATA_SMART_READ_VALUES ;
 int __idedisk_proc_show (struct seq_file*,int ,int ) ;

__attribute__((used)) static int idedisk_sv_proc_show(struct seq_file *m, void *v)
{
 return __idedisk_proc_show(m, m->private, ATA_SMART_READ_VALUES);
}
