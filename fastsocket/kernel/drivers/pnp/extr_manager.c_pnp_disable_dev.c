
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnp_dev {scalar_t__ active; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pnp_clean_resource_table (struct pnp_dev*) ;
 int pnp_res_mutex ;
 int pnp_stop_dev (struct pnp_dev*) ;

int pnp_disable_dev(struct pnp_dev *dev)
{
 int error;

 if (!dev->active)
  return 0;

 error = pnp_stop_dev(dev);
 if (error)
  return error;

 dev->active = 0;


 mutex_lock(&pnp_res_mutex);
 pnp_clean_resource_table(dev);
 mutex_unlock(&pnp_res_mutex);

 return 0;
}
