
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdma_id_private {int state; int handler_mutex; } ;
typedef enum rdma_cm_state { ____Placeholder_rdma_cm_state } rdma_cm_state ;


 int EINVAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int cma_disable_callback(struct rdma_id_private *id_priv,
    enum rdma_cm_state state)
{
 mutex_lock(&id_priv->handler_mutex);
 if (id_priv->state != state) {
  mutex_unlock(&id_priv->handler_mutex);
  return -EINVAL;
 }
 return 0;
}
