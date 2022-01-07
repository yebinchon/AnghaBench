
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int private; } ;


 int proc_print_scsidevice (void*,struct seq_file*) ;
 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static int scsi_seq_show(struct seq_file *sfile, void *dev)
{
 if (!sfile->private)
  seq_puts(sfile, "Attached devices:\n");

 return proc_print_scsidevice(dev, sfile);
}
