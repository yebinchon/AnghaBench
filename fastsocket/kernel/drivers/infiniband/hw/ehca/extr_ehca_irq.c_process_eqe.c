
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;
struct ehca_shca {int ib_device; } ;
struct ehca_eqe {int entry; } ;
struct ehca_cq {int wait_completion; int nr_events; } ;


 scalar_t__ EHCA_BMASK_GET (int ,int ) ;
 int EQE_COMPLETION_EVENT ;
 int EQE_CQ_TOKEN ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int atomic_inc (int *) ;
 int comp_event_callback (struct ehca_cq*) ;
 int ehca_cq_idr ;
 int ehca_cq_idr_lock ;
 int ehca_dbg (int *,char*,...) ;
 int ehca_err (int *,char*,scalar_t__) ;
 scalar_t__ ehca_scaling_code ;
 struct ehca_cq* idr_find (int *,scalar_t__) ;
 int parse_identifier (struct ehca_shca*,int ) ;
 int queue_comp_task (struct ehca_cq*) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int reset_eq_pending (struct ehca_cq*) ;
 int wake_up (int *) ;

__attribute__((used)) static inline void process_eqe(struct ehca_shca *shca, struct ehca_eqe *eqe)
{
 u64 eqe_value;
 u32 token;
 struct ehca_cq *cq;

 eqe_value = eqe->entry;
 ehca_dbg(&shca->ib_device, "eqe_value=%llx", eqe_value);
 if (EHCA_BMASK_GET(EQE_COMPLETION_EVENT, eqe_value)) {
  ehca_dbg(&shca->ib_device, "Got completion event");
  token = EHCA_BMASK_GET(EQE_CQ_TOKEN, eqe_value);
  read_lock(&ehca_cq_idr_lock);
  cq = idr_find(&ehca_cq_idr, token);
  if (cq)
   atomic_inc(&cq->nr_events);
  read_unlock(&ehca_cq_idr_lock);
  if (cq == ((void*)0)) {
   ehca_err(&shca->ib_device,
     "Invalid eqe for non-existing cq token=%x",
     token);
   return;
  }
  reset_eq_pending(cq);
  if (ehca_scaling_code)
   queue_comp_task(cq);
  else {
   comp_event_callback(cq);
   if (atomic_dec_and_test(&cq->nr_events))
    wake_up(&cq->wait_completion);
  }
 } else {
  ehca_dbg(&shca->ib_device, "Got non completion event");
  parse_identifier(shca, eqe_value);
 }
}
