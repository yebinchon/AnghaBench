
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpm_bios_log {struct tpm_bios_log* bios_event_log; } ;
struct seq_file {struct tpm_bios_log* private; } ;
struct inode {int dummy; } ;
struct file {struct seq_file* private_data; } ;


 int kfree (struct tpm_bios_log*) ;
 int seq_release (struct inode*,struct file*) ;

__attribute__((used)) static int tpm_bios_measurements_release(struct inode *inode,
      struct file *file)
{
 struct seq_file *seq = file->private_data;
 struct tpm_bios_log *log = seq->private;

 if (log) {
  kfree(log->bios_event_log);
  kfree(log);
 }

 return seq_release(inode, file);
}
