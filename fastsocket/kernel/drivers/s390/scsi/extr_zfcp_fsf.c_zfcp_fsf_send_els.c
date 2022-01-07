
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct zfcp_send_els {int d_id; int resp; int req; TYPE_4__* adapter; } ;
struct zfcp_qdio {int req_q_lock; } ;
struct zfcp_fsf_req {struct zfcp_send_els* data; int handler; TYPE_3__* qtcb; int queue_req; int status; } ;
struct TYPE_8__ {struct zfcp_qdio* qdio; } ;
struct TYPE_5__ {int d_id; } ;
struct TYPE_6__ {TYPE_1__ support; } ;
struct TYPE_7__ {TYPE_2__ bottom; } ;


 int EIO ;
 int FSF_QTCB_SEND_ELS ;
 scalar_t__ IS_ERR (struct zfcp_fsf_req*) ;
 int PTR_ERR (struct zfcp_fsf_req*) ;
 int ZFCP_STATUS_FSFREQ_CLEANUP ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int zfcp_adapter_multi_buffer_active (TYPE_4__*) ;
 int zfcp_dbf_san_els_request (struct zfcp_fsf_req*) ;
 struct zfcp_fsf_req* zfcp_fsf_req_create (struct zfcp_qdio*,int ,int *) ;
 int zfcp_fsf_req_free (struct zfcp_fsf_req*) ;
 scalar_t__ zfcp_fsf_req_sbal_get (struct zfcp_qdio*) ;
 int zfcp_fsf_req_send (struct zfcp_fsf_req*) ;
 int zfcp_fsf_send_els_handler ;
 int zfcp_fsf_setup_ct_els (struct zfcp_fsf_req*,int ,int ,int,unsigned int) ;
 int zfcp_qdio_sbal_limit (struct zfcp_qdio*,int *,int) ;

int zfcp_fsf_send_els(struct zfcp_send_els *els, unsigned int timeout)
{
 struct zfcp_fsf_req *req;
 struct zfcp_qdio *qdio = els->adapter->qdio;
 int ret = -EIO;

 spin_lock_bh(&qdio->req_q_lock);
 if (zfcp_fsf_req_sbal_get(qdio))
  goto out;

 req = zfcp_fsf_req_create(qdio, FSF_QTCB_SEND_ELS, ((void*)0));

 if (IS_ERR(req)) {
  ret = PTR_ERR(req);
  goto out;
 }

 req->status |= ZFCP_STATUS_FSFREQ_CLEANUP;


 if (!zfcp_adapter_multi_buffer_active(els->adapter))
  zfcp_qdio_sbal_limit(qdio, &req->queue_req, 2);


 ret = zfcp_fsf_setup_ct_els(req, els->req, els->resp, 2, timeout);

 if (ret)
  goto failed_send;

 req->qtcb->bottom.support.d_id = els->d_id;
 req->handler = zfcp_fsf_send_els_handler;
 req->data = els;

 zfcp_dbf_san_els_request(req);

 ret = zfcp_fsf_req_send(req);
 if (ret)
  goto failed_send;

 goto out;

failed_send:
 zfcp_fsf_req_free(req);
out:
 spin_unlock_bh(&qdio->req_q_lock);
 return ret;
}
