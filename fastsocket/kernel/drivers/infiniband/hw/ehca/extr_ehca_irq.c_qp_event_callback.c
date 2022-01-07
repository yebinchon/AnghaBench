
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct ehca_shca {int dummy; } ;
struct TYPE_2__ {int handle; } ;
struct ehca_qp {scalar_t__ ext_type; int wait_completion; int nr_events; TYPE_1__ ipz_qp_handle; } ;
typedef enum ib_event_type { ____Placeholder_ib_event_type } ib_event_type ;


 int EHCA_BMASK_GET (int ,int ) ;
 int EQE_QP_TOKEN ;
 scalar_t__ EQPT_SRQ ;
 scalar_t__ EQPT_SRQBASE ;
 int IB_EVENT_QP_LAST_WQE_REACHED ;
 int IB_EVENT_SRQ_ERR ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int atomic_inc (int *) ;
 int dispatch_qp_event (struct ehca_shca*,struct ehca_qp*,int) ;
 int ehca_error_data (struct ehca_shca*,struct ehca_qp*,int ) ;
 int ehca_qp_idr ;
 int ehca_qp_idr_lock ;
 struct ehca_qp* idr_find (int *,int ) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void qp_event_callback(struct ehca_shca *shca, u64 eqe,
         enum ib_event_type event_type, int fatal)
{
 struct ehca_qp *qp;
 u32 token = EHCA_BMASK_GET(EQE_QP_TOKEN, eqe);

 read_lock(&ehca_qp_idr_lock);
 qp = idr_find(&ehca_qp_idr, token);
 if (qp)
  atomic_inc(&qp->nr_events);
 read_unlock(&ehca_qp_idr_lock);

 if (!qp)
  return;

 if (fatal)
  ehca_error_data(shca, qp, qp->ipz_qp_handle.handle);

 dispatch_qp_event(shca, qp, fatal && qp->ext_type == EQPT_SRQ ?
     IB_EVENT_SRQ_ERR : event_type);






 if (fatal && qp->ext_type == EQPT_SRQBASE)
  dispatch_qp_event(shca, qp, IB_EVENT_QP_LAST_WQE_REACHED);

 if (atomic_dec_and_test(&qp->nr_events))
  wake_up(&qp->wait_completion);
 return;
}
