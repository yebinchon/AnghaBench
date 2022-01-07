
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_device {int dummy; } ;
struct ib_cm_id {int remote_cm_qpn; void* context; int cm_handler; struct ib_device* device; int state; } ;
struct cm_id_private {struct ib_cm_id id; int refcount; int work_count; int work_list; int comp; int lock; } ;
typedef int ib_cm_handler ;


 int ENOMEM ;
 struct ib_cm_id* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int IB_CM_IDLE ;
 int INIT_LIST_HEAD (int *) ;
 int atomic_set (int *,int) ;
 int cm_alloc_id (struct cm_id_private*) ;
 int init_completion (int *) ;
 int kfree (struct cm_id_private*) ;
 struct cm_id_private* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;

struct ib_cm_id *ib_create_cm_id(struct ib_device *device,
     ib_cm_handler cm_handler,
     void *context)
{
 struct cm_id_private *cm_id_priv;
 int ret;

 cm_id_priv = kzalloc(sizeof *cm_id_priv, GFP_KERNEL);
 if (!cm_id_priv)
  return ERR_PTR(-ENOMEM);

 cm_id_priv->id.state = IB_CM_IDLE;
 cm_id_priv->id.device = device;
 cm_id_priv->id.cm_handler = cm_handler;
 cm_id_priv->id.context = context;
 cm_id_priv->id.remote_cm_qpn = 1;
 ret = cm_alloc_id(cm_id_priv);
 if (ret)
  goto error;

 spin_lock_init(&cm_id_priv->lock);
 init_completion(&cm_id_priv->comp);
 INIT_LIST_HEAD(&cm_id_priv->work_list);
 atomic_set(&cm_id_priv->work_count, -1);
 atomic_set(&cm_id_priv->refcount, 1);
 return &cm_id_priv->id;

error:
 kfree(cm_id_priv);
 return ERR_PTR(-ENOMEM);
}
