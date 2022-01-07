
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {scalar_t__ private; } ;
struct TYPE_2__ {int * id; } ;
typedef TYPE_1__ ide_drive_t ;


 size_t ATA_ID_PROD ;
 int seq_printf (struct seq_file*,char*,char*) ;

__attribute__((used)) static int ide_dmodel_proc_show(struct seq_file *seq, void *v)
{
 ide_drive_t *drive = (ide_drive_t *) seq->private;
 char *m = (char *)&drive->id[ATA_ID_PROD];

 seq_printf(seq, "%.40s\n", m[0] ? m : "(none)");
 return 0;
}
