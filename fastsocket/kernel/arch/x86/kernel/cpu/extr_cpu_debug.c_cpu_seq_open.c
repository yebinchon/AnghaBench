
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct cpu_private* private; } ;
struct inode {struct cpu_private* i_private; } ;
struct file {struct seq_file* private_data; } ;
struct cpu_private {int dummy; } ;


 int cpu_seq_ops ;
 int seq_open (struct file*,int *) ;

__attribute__((used)) static int cpu_seq_open(struct inode *inode, struct file *file)
{
 struct cpu_private *priv = inode->i_private;
 struct seq_file *seq;
 int err;

 err = seq_open(file, &cpu_seq_ops);
 if (!err) {
  seq = file->private_data;
  seq->private = priv;
 }

 return err;
}
