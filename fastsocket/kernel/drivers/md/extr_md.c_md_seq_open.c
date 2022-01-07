
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct mdstat_info* private; } ;
struct mdstat_info {int event; } ;
struct inode {int dummy; } ;
struct file {struct seq_file* private_data; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int atomic_read (int *) ;
 int kfree (struct mdstat_info*) ;
 struct mdstat_info* kmalloc (int,int ) ;
 int md_event_count ;
 int md_seq_ops ;
 int seq_open (struct file*,int *) ;

__attribute__((used)) static int md_seq_open(struct inode *inode, struct file *file)
{
 int error;
 struct mdstat_info *mi = kmalloc(sizeof(*mi), GFP_KERNEL);
 if (mi == ((void*)0))
  return -ENOMEM;

 error = seq_open(file, &md_seq_ops);
 if (error)
  kfree(mi);
 else {
  struct seq_file *p = file->private_data;
  p->private = mi;
  mi->event = atomic_read(&md_event_count);
 }
 return error;
}
