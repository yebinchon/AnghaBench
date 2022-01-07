
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdma_cm_id {int ps; int qp_type; int event_handler; void* context; } ;
struct rdma_id_private {struct rdma_cm_id id; int seq_num; int mc_list; int listen_list; int handler_mutex; int refcount; int comp; int qp_mutex; int lock; int state; int owner; } ;
typedef int rdma_cm_event_handler ;
typedef enum rdma_port_space { ____Placeholder_rdma_port_space } rdma_port_space ;
typedef enum ib_qp_type { ____Placeholder_ib_qp_type } ib_qp_type ;


 int ENOMEM ;
 struct rdma_cm_id* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int RDMA_CM_IDLE ;
 int atomic_set (int *,int) ;
 int current ;
 int get_random_bytes (int *,int) ;
 int init_completion (int *) ;
 struct rdma_id_private* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;
 int task_pid_nr (int ) ;

struct rdma_cm_id *rdma_create_id(rdma_cm_event_handler event_handler,
      void *context, enum rdma_port_space ps,
      enum ib_qp_type qp_type)
{
 struct rdma_id_private *id_priv;

 id_priv = kzalloc(sizeof *id_priv, GFP_KERNEL);
 if (!id_priv)
  return ERR_PTR(-ENOMEM);

 id_priv->owner = task_pid_nr(current);
 id_priv->state = RDMA_CM_IDLE;
 id_priv->id.context = context;
 id_priv->id.event_handler = event_handler;
 id_priv->id.ps = ps;
 id_priv->id.qp_type = qp_type;
 spin_lock_init(&id_priv->lock);
 mutex_init(&id_priv->qp_mutex);
 init_completion(&id_priv->comp);
 atomic_set(&id_priv->refcount, 1);
 mutex_init(&id_priv->handler_mutex);
 INIT_LIST_HEAD(&id_priv->listen_list);
 INIT_LIST_HEAD(&id_priv->mc_list);
 get_random_bytes(&id_priv->seq_num, sizeof id_priv->seq_num);

 return &id_priv->id;
}
