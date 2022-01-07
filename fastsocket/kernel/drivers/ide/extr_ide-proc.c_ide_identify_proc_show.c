
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u8 ;
struct seq_file {scalar_t__ private; } ;
typedef int ide_drive_t ;
typedef int __le16 ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int SECTOR_SIZE ;
 int kfree (char*) ;
 char* kmalloc (int,int ) ;
 int le16_to_cpu (int ) ;
 int seq_printf (struct seq_file*,char*,int ,char) ;
 int seq_putc (struct seq_file*,char) ;
 scalar_t__ taskfile_lib_get_identify (int *,char*) ;

__attribute__((used)) static int ide_identify_proc_show(struct seq_file *m, void *v)
{
 ide_drive_t *drive = (ide_drive_t *)m->private;
 u8 *buf;

 if (!drive) {
  seq_putc(m, '\n');
  return 0;
 }

 buf = kmalloc(SECTOR_SIZE, GFP_KERNEL);
 if (!buf)
  return -ENOMEM;
 if (taskfile_lib_get_identify(drive, buf) == 0) {
  __le16 *val = (__le16 *)buf;
  int i;

  for (i = 0; i < SECTOR_SIZE / 2; i++) {
   seq_printf(m, "%04x%c", le16_to_cpu(val[i]),
     (i % 8) == 7 ? '\n' : ' ');
  }
 } else
  seq_putc(m, buf[0]);
 kfree(buf);
 return 0;
}
