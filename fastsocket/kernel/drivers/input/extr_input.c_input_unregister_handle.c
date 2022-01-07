
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_handle {int d_node; int h_node; struct input_dev* dev; } ;
struct input_dev {int mutex; } ;


 int list_del_init (int *) ;
 int list_del_rcu (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int synchronize_rcu () ;

void input_unregister_handle(struct input_handle *handle)
{
 struct input_dev *dev = handle->dev;

 list_del_init(&handle->h_node);




 mutex_lock(&dev->mutex);
 list_del_rcu(&handle->d_node);
 mutex_unlock(&dev->mutex);
 synchronize_rcu();
}
