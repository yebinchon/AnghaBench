
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int private; } ;
struct inode {int i_private; } ;
struct file {struct seq_file* private_data; } ;


 int register_seq_ops ;
 int seq_open (struct file*,int *) ;

__attribute__((used)) static int open_file_registers(struct inode *inode, struct file *file)
{
 struct seq_file *s;
 int res;
 res = seq_open(file, &register_seq_ops);
 if (res == 0) {
  s = file->private_data;
  s->private = inode->i_private;
 }
 return res;
}
