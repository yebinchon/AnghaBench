
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct ehca_eq {int irq_spinlock; struct ehca_eqe_cache_entry* eqe_cache; int spinlock; int ipz_queue; int ist; } ;
struct ehca_shca {struct ehca_eq eq; int ib_device; int ipz_hca_handle; } ;
struct ehca_eqe_cache_entry {TYPE_1__* eqe; struct ehca_cq* cq; } ;
struct ehca_eqe {int dummy; } ;
struct ehca_cq {int wait_completion; int nr_events; } ;
struct TYPE_2__ {scalar_t__ entry; } ;


 scalar_t__ EHCA_BMASK_GET (int ,scalar_t__) ;
 int EHCA_EQE_CACHE_SIZE ;
 int EQE_COMPLETION_EVENT ;
 int EQE_CQ_TOKEN ;
 scalar_t__ H_SUCCESS ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int atomic_inc (int *) ;
 int comp_event_callback (struct ehca_cq*) ;
 int ehca_cq_idr ;
 int ehca_cq_idr_lock ;
 int ehca_dbg (int *,char*,...) ;
 int ehca_err (int *,char*,scalar_t__) ;
 void* ehca_poll_eq (struct ehca_shca*,struct ehca_eq*) ;
 scalar_t__ ehca_scaling_code ;
 scalar_t__ hipz_h_eoi (int ) ;
 int hipz_h_query_int_state (int ,int ) ;
 struct ehca_cq* idr_find (int *,scalar_t__) ;
 int iosync () ;
 int ipz_eqit_eq_peek_valid (int *) ;
 int parse_identifier (struct ehca_shca*,scalar_t__) ;
 int process_eqe (struct ehca_shca*,struct ehca_eqe*) ;
 int queue_comp_task (struct ehca_cq*) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int reset_eq_pending (struct ehca_cq*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;
 int wake_up (int *) ;

void ehca_process_eq(struct ehca_shca *shca, int is_irq)
{
 struct ehca_eq *eq = &shca->eq;
 struct ehca_eqe_cache_entry *eqe_cache = eq->eqe_cache;
 u64 eqe_value, ret;
 int eqe_cnt, i;
 int eq_empty = 0;

 spin_lock(&eq->irq_spinlock);
 if (is_irq) {
  const int max_query_cnt = 100;
  int query_cnt = 0;
  int int_state = 1;
  do {
   int_state = hipz_h_query_int_state(
    shca->ipz_hca_handle, eq->ist);
   query_cnt++;
   iosync();
  } while (int_state && query_cnt < max_query_cnt);
  if (unlikely((query_cnt == max_query_cnt)))
   ehca_dbg(&shca->ib_device, "int_state=%x query_cnt=%x",
     int_state, query_cnt);
 }


 eqe_cnt = 0;
 do {
  u32 token;
  eqe_cache[eqe_cnt].eqe = ehca_poll_eq(shca, eq);
  if (!eqe_cache[eqe_cnt].eqe)
   break;
  eqe_value = eqe_cache[eqe_cnt].eqe->entry;
  if (EHCA_BMASK_GET(EQE_COMPLETION_EVENT, eqe_value)) {
   token = EHCA_BMASK_GET(EQE_CQ_TOKEN, eqe_value);
   read_lock(&ehca_cq_idr_lock);
   eqe_cache[eqe_cnt].cq = idr_find(&ehca_cq_idr, token);
   if (eqe_cache[eqe_cnt].cq)
    atomic_inc(&eqe_cache[eqe_cnt].cq->nr_events);
   read_unlock(&ehca_cq_idr_lock);
   if (!eqe_cache[eqe_cnt].cq) {
    ehca_err(&shca->ib_device,
      "Invalid eqe for non-existing cq "
      "token=%x", token);
    continue;
   }
  } else
   eqe_cache[eqe_cnt].cq = ((void*)0);
  eqe_cnt++;
 } while (eqe_cnt < EHCA_EQE_CACHE_SIZE);
 if (!eqe_cnt) {
  if (is_irq)
   ehca_dbg(&shca->ib_device,
     "No eqe found for irq event");
  goto unlock_irq_spinlock;
 } else if (!is_irq) {
  ret = hipz_h_eoi(eq->ist);
  if (ret != H_SUCCESS)
   ehca_err(&shca->ib_device,
     "bad return code EOI -rc = %lld\n", ret);
  ehca_dbg(&shca->ib_device, "deadman found %x eqe", eqe_cnt);
 }
 if (unlikely(eqe_cnt == EHCA_EQE_CACHE_SIZE))
  ehca_dbg(&shca->ib_device, "too many eqes for one irq event");

 for (i = 0; i < eqe_cnt; i++) {
  if (eq->eqe_cache[i].cq)
   reset_eq_pending(eq->eqe_cache[i].cq);
 }

 spin_lock(&eq->spinlock);
 eq_empty = (!ipz_eqit_eq_peek_valid(&shca->eq.ipz_queue));
 spin_unlock(&eq->spinlock);

 for (i = 0; i < eqe_cnt; i++)
  if (eq->eqe_cache[i].cq) {
   if (ehca_scaling_code)
    queue_comp_task(eq->eqe_cache[i].cq);
   else {
    struct ehca_cq *cq = eq->eqe_cache[i].cq;
    comp_event_callback(cq);
    if (atomic_dec_and_test(&cq->nr_events))
     wake_up(&cq->wait_completion);
   }
  } else {
   ehca_dbg(&shca->ib_device, "Got non completion event");
   parse_identifier(shca, eq->eqe_cache[i].eqe->entry);
  }

 if (eq_empty)
  goto unlock_irq_spinlock;
 do {
  struct ehca_eqe *eqe;
  eqe = ehca_poll_eq(shca, &shca->eq);
  if (!eqe)
   break;
  process_eqe(shca, eqe);
 } while (1);

unlock_irq_spinlock:
 spin_unlock(&eq->irq_spinlock);
}
