
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct qdio_output_q {struct qaob** aobs; TYPE_1__* sbal_state; int use_cq; } ;
struct qaob {scalar_t__ user1; } ;
struct TYPE_2__ {scalar_t__ user; struct qaob* aob; int flags; } ;


 int BUG_ON (unsigned long) ;
 int QDIO_OUTBUF_STATE_FLAG_NONE ;
 struct qaob* qdio_allocate_aob () ;
 unsigned long virt_to_phys (struct qaob*) ;

__attribute__((used)) static inline unsigned long qdio_aob_for_buffer(struct qdio_output_q *q,
     int bufnr)
{
 unsigned long phys_aob = 0;

 if (!q->use_cq)
  goto out;

 if (!q->aobs[bufnr]) {
  struct qaob *aob = qdio_allocate_aob();
  q->aobs[bufnr] = aob;
 }
 if (q->aobs[bufnr]) {
  BUG_ON(q->sbal_state == ((void*)0));
  q->sbal_state[bufnr].flags = QDIO_OUTBUF_STATE_FLAG_NONE;
  q->sbal_state[bufnr].aob = q->aobs[bufnr];
  q->aobs[bufnr]->user1 = (u64) q->sbal_state[bufnr].user;
  phys_aob = virt_to_phys(q->aobs[bufnr]);
  BUG_ON(phys_aob & 0xFF);
 }

out:
 return phys_aob;
}
