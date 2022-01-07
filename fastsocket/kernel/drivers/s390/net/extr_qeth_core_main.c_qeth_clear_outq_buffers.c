
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_qdio_out_q {int ** bufs; } ;


 int QDIO_MAX_BUFFERS_PER_Q ;
 int QETH_QDIO_BUF_EMPTY ;
 int kmem_cache_free (int ,int *) ;
 int qeth_cleanup_handled_pending (struct qeth_qdio_out_q*,int,int) ;
 int qeth_clear_output_buffer (struct qeth_qdio_out_q*,int *,int ) ;
 int qeth_qdio_outbuf_cache ;

__attribute__((used)) static void qeth_clear_outq_buffers(struct qeth_qdio_out_q *q, int free)
{
 int j;

 for (j = 0; j < QDIO_MAX_BUFFERS_PER_Q; ++j) {
  if (!q->bufs[j])
   continue;
  qeth_cleanup_handled_pending(q, j, 1);
  qeth_clear_output_buffer(q, q->bufs[j], QETH_QDIO_BUF_EMPTY);
  if (free) {
   kmem_cache_free(qeth_qdio_outbuf_cache, q->bufs[j]);
   q->bufs[j] = ((void*)0);
  }
 }
}
