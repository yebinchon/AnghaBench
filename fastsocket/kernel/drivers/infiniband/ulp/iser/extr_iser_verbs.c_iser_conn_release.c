
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iser_device {int dummy; } ;
struct iser_conn {scalar_t__ state; int ep; int * cma_id; struct iser_device* device; int conn_list; } ;
struct TYPE_2__ {int connlist_mutex; } ;


 int BUG_ON (int) ;
 scalar_t__ ISER_CONN_DOWN ;
 TYPE_1__ ig ;
 int iscsi_destroy_endpoint (int ) ;
 int iser_device_try_release (struct iser_device*) ;
 int iser_free_ib_conn_res (struct iser_conn*) ;
 int iser_free_rx_descriptors (struct iser_conn*) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rdma_destroy_id (int *) ;

__attribute__((used)) static void iser_conn_release(struct iser_conn *ib_conn, int can_destroy_id)
{
 struct iser_device *device = ib_conn->device;

 BUG_ON(ib_conn->state != ISER_CONN_DOWN);

 mutex_lock(&ig.connlist_mutex);
 list_del(&ib_conn->conn_list);
 mutex_unlock(&ig.connlist_mutex);
 iser_free_rx_descriptors(ib_conn);
 iser_free_ib_conn_res(ib_conn);
 ib_conn->device = ((void*)0);

 if (device != ((void*)0))
  iser_device_try_release(device);

 if (ib_conn->cma_id != ((void*)0) && can_destroy_id) {
  rdma_destroy_id(ib_conn->cma_id);
  ib_conn->cma_id = ((void*)0);
 }
 iscsi_destroy_endpoint(ib_conn->ep);
}
