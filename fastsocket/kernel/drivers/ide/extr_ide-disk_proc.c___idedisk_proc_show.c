
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct seq_file {int dummy; } ;
typedef int ide_drive_t ;
typedef int __le16 ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int SECTOR_SIZE ;
 scalar_t__ get_smart_data (int *,int *,int ) ;
 int kfree (int *) ;
 int * kmalloc (int,int ) ;
 int le16_to_cpu (int ) ;
 int seq_printf (struct seq_file*,char*,int ,char) ;
 int smart_enable (int *) ;

__attribute__((used)) static int __idedisk_proc_show(struct seq_file *m, ide_drive_t *drive, u8 sub_cmd)
{
 u8 *buf;

 buf = kmalloc(SECTOR_SIZE, GFP_KERNEL);
 if (!buf)
  return -ENOMEM;

 (void)smart_enable(drive);

 if (get_smart_data(drive, buf, sub_cmd) == 0) {
  __le16 *val = (__le16 *)buf;
  int i;

  for (i = 0; i < SECTOR_SIZE / 2; i++) {
   seq_printf(m, "%04x%c", le16_to_cpu(val[i]),
     (i % 8) == 7 ? '\n' : ' ');
  }
 }
 kfree(buf);
 return 0;
}
