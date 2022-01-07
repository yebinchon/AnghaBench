
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_handler {int (* start ) (struct input_handle*) ;int h_list; } ;
struct input_handle {int h_node; int d_node; struct input_dev* dev; struct input_handler* handler; } ;
struct input_dev {int mutex; int h_list; } ;


 int list_add_tail (int *,int *) ;
 int list_add_tail_rcu (int *,int *) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct input_handle*) ;

int input_register_handle(struct input_handle *handle)
{
 struct input_handler *handler = handle->handler;
 struct input_dev *dev = handle->dev;
 int error;





 error = mutex_lock_interruptible(&dev->mutex);
 if (error)
  return error;
 list_add_tail_rcu(&handle->d_node, &dev->h_list);
 mutex_unlock(&dev->mutex);







 list_add_tail(&handle->h_node, &handler->h_list);

 if (handler->start)
  handler->start(handle);

 return 0;
}
