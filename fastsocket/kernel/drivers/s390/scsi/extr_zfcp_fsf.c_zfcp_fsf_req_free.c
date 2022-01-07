
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct zfcp_fsf_req {struct zfcp_fsf_req* qtcb; struct zfcp_fsf_req* pool; TYPE_2__* adapter; } ;
struct TYPE_6__ {int qtcb_cache; } ;
struct TYPE_4__ {struct zfcp_fsf_req* qtcb_pool; } ;
struct TYPE_5__ {TYPE_1__ pool; } ;


 int kfree (struct zfcp_fsf_req*) ;
 int kmem_cache_free (int ,struct zfcp_fsf_req*) ;
 scalar_t__ likely (struct zfcp_fsf_req*) ;
 int mempool_free (struct zfcp_fsf_req*,struct zfcp_fsf_req*) ;
 TYPE_3__ zfcp_data ;

void zfcp_fsf_req_free(struct zfcp_fsf_req *req)
{
 if (likely(req->pool)) {
  if (likely(req->qtcb))
   mempool_free(req->qtcb, req->adapter->pool.qtcb_pool);
  mempool_free(req, req->pool);
  return;
 }

 if (likely(req->qtcb))
  kmem_cache_free(zfcp_data.qtcb_cache, req->qtcb);
 kfree(req);
}
