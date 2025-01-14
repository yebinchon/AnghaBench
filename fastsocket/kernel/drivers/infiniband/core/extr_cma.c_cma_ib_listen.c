
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
struct TYPE_3__ {struct ib_cm_id* ib; } ;
struct TYPE_4__ {int ps; int device; } ;
struct rdma_id_private {TYPE_1__ cm_id; TYPE_2__ id; int afonly; } ;
struct ib_cm_id {int dummy; } ;
struct ib_cm_compare_data {int dummy; } ;
typedef int __be64 ;


 scalar_t__ IS_ERR (struct ib_cm_id*) ;
 int PTR_ERR (struct ib_cm_id*) ;
 scalar_t__ cma_any_addr (struct sockaddr*) ;
 int cma_req_handler ;
 int cma_set_compare_data (int ,struct sockaddr*,struct ib_cm_compare_data*) ;
 struct sockaddr* cma_src_addr (struct rdma_id_private*) ;
 int ib_cm_listen (struct ib_cm_id*,int ,int ,struct ib_cm_compare_data*) ;
 struct ib_cm_id* ib_create_cm_id (int ,int ,struct rdma_id_private*) ;
 int ib_destroy_cm_id (struct ib_cm_id*) ;
 int rdma_get_service_id (TYPE_2__*,struct sockaddr*) ;

__attribute__((used)) static int cma_ib_listen(struct rdma_id_private *id_priv)
{
 struct ib_cm_compare_data compare_data;
 struct sockaddr *addr;
 struct ib_cm_id *id;
 __be64 svc_id;
 int ret;

 id = ib_create_cm_id(id_priv->id.device, cma_req_handler, id_priv);
 if (IS_ERR(id))
  return PTR_ERR(id);

 id_priv->cm_id.ib = id;

 addr = cma_src_addr(id_priv);
 svc_id = rdma_get_service_id(&id_priv->id, addr);
 if (cma_any_addr(addr) && !id_priv->afonly)
  ret = ib_cm_listen(id_priv->cm_id.ib, svc_id, 0, ((void*)0));
 else {
  cma_set_compare_data(id_priv->id.ps, addr, &compare_data);
  ret = ib_cm_listen(id_priv->cm_id.ib, svc_id, 0, &compare_data);
 }

 if (ret) {
  ib_destroy_cm_id(id_priv->cm_id.ib);
  id_priv->cm_id.ib = ((void*)0);
 }

 return ret;
}
