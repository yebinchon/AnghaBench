
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int private; } ;
struct inode {int dummy; } ;
struct file {struct seq_file* private_data; } ;


 int PDE_DATA (struct inode*) ;
 int prism2_scan_results_proc_seqops ;
 int seq_open (struct file*,int *) ;

__attribute__((used)) static int prism2_scan_results_proc_open(struct inode *inode, struct file *file)
{
 int ret = seq_open(file, &prism2_scan_results_proc_seqops);
 if (ret == 0) {
  struct seq_file *m = file->private_data;
  m->private = PDE_DATA(inode);
 }
 return ret;
}
