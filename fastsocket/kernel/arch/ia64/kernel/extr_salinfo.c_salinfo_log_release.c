
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct salinfo_data {scalar_t__ state; scalar_t__ open; int * oemdata; int * log_buffer; } ;
struct proc_dir_entry {struct salinfo_data* data; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;


 struct proc_dir_entry* PDE (struct inode*) ;
 scalar_t__ STATE_NO_DATA ;
 int data_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int vfree (int *) ;

__attribute__((used)) static int
salinfo_log_release(struct inode *inode, struct file *file)
{
 struct proc_dir_entry *entry = PDE(inode);
 struct salinfo_data *data = entry->data;

 if (data->state == STATE_NO_DATA) {
  vfree(data->log_buffer);
  vfree(data->oemdata);
  data->log_buffer = ((void*)0);
  data->oemdata = ((void*)0);
 }
 spin_lock(&data_lock);
 data->open = 0;
 spin_unlock(&data_lock);
 return 0;
}
