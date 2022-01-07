
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct hid_debug_list {struct hid_debug_list* hid_debug_buf; int node; } ;
struct file {struct hid_debug_list* private_data; } ;


 int kfree (struct hid_debug_list*) ;
 int list_del (int *) ;

__attribute__((used)) static int hid_debug_events_release(struct inode *inode, struct file *file)
{
 struct hid_debug_list *list = file->private_data;

 list_del(&list->node);
 kfree(list->hid_debug_buf);
 kfree(list);

 return 0;
}
