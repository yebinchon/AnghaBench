
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {void* private_data; } ;
struct TYPE_3__ {int current_node; int lastnode; } ;
typedef TYPE_1__ DATA ;


 int ENOMEM ;
 int GFP_KERNEL ;
 TYPE_1__* kmalloc (int,int ) ;
 int lock_kernel () ;
 int of_find_node_by_path (char*) ;
 int unlock_kernel () ;

__attribute__((used)) static int openprom_open(struct inode * inode, struct file * file)
{
 DATA *data;

 data = kmalloc(sizeof(DATA), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 lock_kernel();
 data->current_node = of_find_node_by_path("/");
 data->lastnode = data->current_node;
 file->private_data = (void *) data;
 unlock_kernel();

 return 0;
}
