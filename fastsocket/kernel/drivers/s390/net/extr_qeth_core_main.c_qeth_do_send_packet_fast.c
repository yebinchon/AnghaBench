
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct qeth_qdio_out_q {int next_buf_to_fill; int state; struct qeth_qdio_out_buffer** bufs; } ;
struct qeth_qdio_out_buffer {int state; } ;
struct qeth_hdr {int dummy; } ;
struct qeth_card {int dummy; } ;


 int EBUSY ;
 int QDIO_MAX_BUFFERS_PER_Q ;
 int QETH_OUT_Q_LOCKED ;
 scalar_t__ QETH_OUT_Q_UNLOCKED ;
 scalar_t__ QETH_QDIO_BUF_EMPTY ;
 scalar_t__ atomic_cmpxchg (int *,scalar_t__,int ) ;
 scalar_t__ atomic_read (int *) ;
 int atomic_set (int *,scalar_t__) ;
 int qeth_fill_buffer (struct qeth_qdio_out_q*,struct qeth_qdio_out_buffer*,struct sk_buff*,struct qeth_hdr*,int,int) ;
 int qeth_flush_buffers (struct qeth_qdio_out_q*,int,int) ;

int qeth_do_send_packet_fast(struct qeth_card *card,
  struct qeth_qdio_out_q *queue, struct sk_buff *skb,
  struct qeth_hdr *hdr, int elements_needed,
  int offset, int hd_len)
{
 struct qeth_qdio_out_buffer *buffer;
 int index;


 while (atomic_cmpxchg(&queue->state, QETH_OUT_Q_UNLOCKED,
         QETH_OUT_Q_LOCKED) != QETH_OUT_Q_UNLOCKED);

 index = queue->next_buf_to_fill;
 buffer = queue->bufs[queue->next_buf_to_fill];




 if (atomic_read(&buffer->state) != QETH_QDIO_BUF_EMPTY)
  goto out;
 queue->next_buf_to_fill = (queue->next_buf_to_fill + 1) %
       QDIO_MAX_BUFFERS_PER_Q;
 atomic_set(&queue->state, QETH_OUT_Q_UNLOCKED);
 qeth_fill_buffer(queue, buffer, skb, hdr, offset, hd_len);
 qeth_flush_buffers(queue, index, 1);
 return 0;
out:
 atomic_set(&queue->state, QETH_OUT_Q_UNLOCKED);
 return -EBUSY;
}
