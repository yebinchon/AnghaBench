
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int k_lock; int k_list; } ;
struct attribute_container {TYPE_1__ containers; int node; } ;


 int EBUSY ;
 int attribute_container_mutex ;
 int list_del (int *) ;
 int list_empty (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int
attribute_container_unregister(struct attribute_container *cont)
{
 int retval = -EBUSY;
 mutex_lock(&attribute_container_mutex);
 spin_lock(&cont->containers.k_lock);
 if (!list_empty(&cont->containers.k_list))
  goto out;
 retval = 0;
 list_del(&cont->node);
 out:
 spin_unlock(&cont->containers.k_lock);
 mutex_unlock(&attribute_container_mutex);
 return retval;

}
