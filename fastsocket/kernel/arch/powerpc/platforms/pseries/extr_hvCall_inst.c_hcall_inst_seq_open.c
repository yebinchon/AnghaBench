
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct seq_file {int private; } ;
struct inode {int dummy; } ;
struct TYPE_6__ {TYPE_2__* dentry; } ;
struct file {TYPE_3__ f_path; struct seq_file* private_data; } ;
struct TYPE_5__ {TYPE_1__* d_inode; } ;
struct TYPE_4__ {int i_private; } ;


 int hcall_inst_seq_ops ;
 int seq_open (struct file*,int *) ;

__attribute__((used)) static int hcall_inst_seq_open(struct inode *inode, struct file *file)
{
 int rc;
 struct seq_file *seq;

 rc = seq_open(file, &hcall_inst_seq_ops);
 seq = file->private_data;
 seq->private = file->f_path.dentry->d_inode->i_private;

 return rc;
}
