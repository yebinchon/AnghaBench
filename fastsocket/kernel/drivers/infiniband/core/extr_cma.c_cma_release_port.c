
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdma_id_private {int node; struct rdma_bind_list* bind_list; } ;
struct rdma_bind_list {int port; int ps; int owners; } ;


 int hlist_del (int *) ;
 scalar_t__ hlist_empty (int *) ;
 int idr_remove (int ,int ) ;
 int kfree (struct rdma_bind_list*) ;
 int lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void cma_release_port(struct rdma_id_private *id_priv)
{
 struct rdma_bind_list *bind_list = id_priv->bind_list;

 if (!bind_list)
  return;

 mutex_lock(&lock);
 hlist_del(&id_priv->node);
 if (hlist_empty(&bind_list->owners)) {
  idr_remove(bind_list->ps, bind_list->port);
  kfree(bind_list);
 }
 mutex_unlock(&lock);
}
