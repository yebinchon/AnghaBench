
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct qeth_qdio_out_q {TYPE_3__* bufstates; struct qeth_qdio_out_buffer** bufs; TYPE_2__* card; } ;
struct qeth_qdio_out_buffer {int aob; int state; struct qeth_qdio_out_buffer* next_pending; } ;
struct TYPE_6__ {int aob; } ;
struct TYPE_4__ {scalar_t__ cq; } ;
struct TYPE_5__ {TYPE_1__ options; } ;


 int BUG_ON (int) ;
 scalar_t__ QETH_CQ_ENABLED ;
 int QETH_DBF_TEXT (int ,int,char*) ;
 scalar_t__ QETH_QDIO_BUF_HANDLED_DELAYED ;
 int TRACE ;
 scalar_t__ atomic_read (int *) ;
 int kmem_cache_free (int ,struct qeth_qdio_out_buffer*) ;
 int qeth_init_qdio_out_buf (struct qeth_qdio_out_q*,int) ;
 int qeth_qdio_outbuf_cache ;
 int qeth_release_skbs (struct qeth_qdio_out_buffer*) ;

__attribute__((used)) static inline void qeth_cleanup_handled_pending(struct qeth_qdio_out_q *q,
 int bidx, int forced_cleanup)
{
 if (q->card->options.cq != QETH_CQ_ENABLED)
  return;

 if (q->bufs[bidx]->next_pending != ((void*)0)) {
  struct qeth_qdio_out_buffer *head = q->bufs[bidx];
  struct qeth_qdio_out_buffer *c = q->bufs[bidx]->next_pending;

  while (c) {
   if (forced_cleanup ||
       atomic_read(&c->state) ==
         QETH_QDIO_BUF_HANDLED_DELAYED) {
    struct qeth_qdio_out_buffer *f = c;



    qeth_release_skbs(c);
    c = f->next_pending;
    BUG_ON(head->next_pending != f);
    head->next_pending = c;
    kmem_cache_free(qeth_qdio_outbuf_cache, f);
   } else {
    head = c;
    c = c->next_pending;
   }

  }
 }
 if (forced_cleanup && (atomic_read(&(q->bufs[bidx]->state)) ==
     QETH_QDIO_BUF_HANDLED_DELAYED)) {

  q->bufs[bidx]->aob = q->bufstates[bidx].aob;
  qeth_init_qdio_out_buf(q, bidx);
  QETH_DBF_TEXT(TRACE, 2, "clprecov");
 }
}
