
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct service_processor {int dummy; } ;
struct inode {struct service_processor* i_private; } ;
struct ibmasmfs_event_data {scalar_t__ active; struct service_processor* sp; int reader; } ;
struct file {struct ibmasmfs_event_data* private_data; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int ibmasm_event_reader_register (struct service_processor*,int *) ;
 struct ibmasmfs_event_data* kmalloc (int,int ) ;

__attribute__((used)) static int event_file_open(struct inode *inode, struct file *file)
{
 struct ibmasmfs_event_data *event_data;
 struct service_processor *sp;

 if (!inode->i_private)
  return -ENODEV;

 sp = inode->i_private;

 event_data = kmalloc(sizeof(struct ibmasmfs_event_data), GFP_KERNEL);
 if (!event_data)
  return -ENOMEM;

 ibmasm_event_reader_register(sp, &event_data->reader);

 event_data->sp = sp;
 event_data->active = 0;
 file->private_data = event_data;
 return 0;
}
