
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_int_ioctl_desc {int dummy; } ;
struct TYPE_4__ {TYPE_1__* slave; } ;
struct v4l2_int_device {scalar_t__ type; int head; TYPE_2__ u; } ;
struct TYPE_3__ {int num_ioctls; int ioctls; } ;


 int int_list ;
 int ioctl_sort_cmp ;
 int list_add (int *,int *) ;
 int mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sort (int ,int ,int,int *,int *) ;
 int v4l2_int_device_try_attach_all () ;
 scalar_t__ v4l2_int_type_slave ;

int v4l2_int_device_register(struct v4l2_int_device *d)
{
 if (d->type == v4l2_int_type_slave)
  sort(d->u.slave->ioctls, d->u.slave->num_ioctls,
       sizeof(struct v4l2_int_ioctl_desc),
       &ioctl_sort_cmp, ((void*)0));
 mutex_lock(&mutex);
 list_add(&d->head, &int_list);
 v4l2_int_device_try_attach_all();
 mutex_unlock(&mutex);

 return 0;
}
