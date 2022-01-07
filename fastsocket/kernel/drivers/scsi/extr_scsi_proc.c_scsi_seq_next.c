
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int private; } ;
typedef int loff_t ;


 void* next_scsi_device (void*) ;

__attribute__((used)) static void *scsi_seq_next(struct seq_file *sfile, void *v, loff_t *pos)
{
 (*pos)++;
 sfile->private++;
 return next_scsi_device(v);
}
