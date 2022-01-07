
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct ehca_shca {int dummy; } ;
struct TYPE_2__ {int handle; } ;
struct ehca_cq {int wait_completion; int nr_events; TYPE_1__ ipz_cq_handle; } ;


 int EHCA_BMASK_GET (int ,int ) ;
 int EQE_CQ_TOKEN ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int atomic_inc (int *) ;
 int ehca_cq_idr ;
 int ehca_cq_idr_lock ;
 int ehca_error_data (struct ehca_shca*,struct ehca_cq*,int ) ;
 struct ehca_cq* idr_find (int *,int ) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void cq_event_callback(struct ehca_shca *shca,
         u64 eqe)
{
 struct ehca_cq *cq;
 u32 token = EHCA_BMASK_GET(EQE_CQ_TOKEN, eqe);

 read_lock(&ehca_cq_idr_lock);
 cq = idr_find(&ehca_cq_idr, token);
 if (cq)
  atomic_inc(&cq->nr_events);
 read_unlock(&ehca_cq_idr_lock);

 if (!cq)
  return;

 ehca_error_data(shca, cq, cq->ipz_cq_handle.handle);

 if (atomic_dec_and_test(&cq->nr_events))
  wake_up(&cq->wait_completion);

 return;
}
