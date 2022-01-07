
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct zfcp_qdio {int req_q_lock; } ;
struct zfcp_fsf_req {int completion; int queue_req; TYPE_2__* qtcb; int handler; } ;
struct zfcp_fsf_cfdc {int sg; int option; int command; } ;
struct zfcp_adapter {int adapter_features; struct zfcp_qdio* qdio; } ;
struct qdio_buffer_element {int sflags; } ;
struct fsf_qtcb_bottom_support {int option; int operation_subtype; } ;
struct TYPE_3__ {struct fsf_qtcb_bottom_support support; } ;
struct TYPE_4__ {TYPE_1__ bottom; } ;


 int EINVAL ;
 int EIO ;
 int EOPNOTSUPP ;
 int EPERM ;
 struct zfcp_fsf_req* ERR_PTR (int) ;
 int FSF_CFDC_OPERATION_SUBTYPE ;
 int FSF_FEATURE_CFDC ;
 int FSF_MAX_SBALS_PER_REQ ;


 scalar_t__ IS_ERR (struct zfcp_fsf_req*) ;
 int SBAL_SFLAGS0_TYPE_READ ;
 int SBAL_SFLAGS0_TYPE_WRITE ;
 scalar_t__ ZFCP_CFDC_MAX_SIZE ;
 int ZFCP_FSF_REQUEST_TIMEOUT ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int wait_for_completion (int *) ;
 scalar_t__ zfcp_adapter_multi_buffer_active (struct zfcp_adapter*) ;
 int zfcp_fsf_control_file_handler ;
 struct zfcp_fsf_req* zfcp_fsf_req_create (struct zfcp_qdio*,int ,int *) ;
 int zfcp_fsf_req_free (struct zfcp_fsf_req*) ;
 scalar_t__ zfcp_fsf_req_sbal_get (struct zfcp_qdio*) ;
 int zfcp_fsf_req_send (struct zfcp_fsf_req*) ;
 int zfcp_fsf_start_timer (struct zfcp_fsf_req*,int ) ;
 scalar_t__ zfcp_qdio_real_bytes (int ) ;
 struct qdio_buffer_element* zfcp_qdio_sbale_req (struct zfcp_qdio*,int *) ;
 int zfcp_qdio_sbals_from_sg (struct zfcp_qdio*,int *,int ,int ,int ) ;
 int zfcp_qdio_set_sbale_last (struct zfcp_qdio*,int *) ;
 int zfcp_qdio_set_scount (struct zfcp_qdio*,int *) ;

struct zfcp_fsf_req *zfcp_fsf_control_file(struct zfcp_adapter *adapter,
        struct zfcp_fsf_cfdc *fsf_cfdc)
{
 struct qdio_buffer_element *sbale;
 struct zfcp_qdio *qdio = adapter->qdio;
 struct zfcp_fsf_req *req = ((void*)0);
 struct fsf_qtcb_bottom_support *bottom;
 int retval = -EIO;
 u8 direction;

 if (!(adapter->adapter_features & FSF_FEATURE_CFDC))
  return ERR_PTR(-EOPNOTSUPP);

 switch (fsf_cfdc->command) {
 case 129:
  direction = SBAL_SFLAGS0_TYPE_WRITE;
  break;
 case 128:
  direction = SBAL_SFLAGS0_TYPE_READ;
  break;
 default:
  return ERR_PTR(-EINVAL);
 }

 spin_lock_bh(&qdio->req_q_lock);
 if (zfcp_fsf_req_sbal_get(qdio))
  goto out;

 req = zfcp_fsf_req_create(qdio, fsf_cfdc->command, ((void*)0));
 if (IS_ERR(req)) {
  retval = -EPERM;
  goto out;
 }

 req->handler = zfcp_fsf_control_file_handler;

 sbale = zfcp_qdio_sbale_req(qdio, &req->queue_req);
 sbale[0].sflags |= direction;

 bottom = &req->qtcb->bottom.support;
 bottom->operation_subtype = FSF_CFDC_OPERATION_SUBTYPE;
 bottom->option = fsf_cfdc->option;

 retval = zfcp_qdio_sbals_from_sg(qdio, &req->queue_req,
      direction, fsf_cfdc->sg,
      FSF_MAX_SBALS_PER_REQ);
 if (retval ||
     (zfcp_qdio_real_bytes(fsf_cfdc->sg) != ZFCP_CFDC_MAX_SIZE)) {
  zfcp_fsf_req_free(req);
  retval = -EIO;
  goto out;
 }
 zfcp_qdio_set_sbale_last(qdio, &req->queue_req);
 if (zfcp_adapter_multi_buffer_active(adapter))
  zfcp_qdio_set_scount(qdio, &req->queue_req);

 zfcp_fsf_start_timer(req, ZFCP_FSF_REQUEST_TIMEOUT);
 retval = zfcp_fsf_req_send(req);
out:
 spin_unlock_bh(&qdio->req_q_lock);

 if (!retval) {
  wait_for_completion(&req->completion);
  return req;
 }
 return ERR_PTR(retval);
}
