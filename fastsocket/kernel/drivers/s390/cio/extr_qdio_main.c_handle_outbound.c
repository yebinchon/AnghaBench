
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int pci_out_enabled; int use_enh_siga; } ;
struct TYPE_7__ {TYPE_4__ out; } ;
struct qdio_q {int tasklet; TYPE_3__ u; TYPE_2__* irq_ptr; int nr_buf_used; } ;
struct TYPE_5__ {int mmwc; } ;
struct TYPE_6__ {TYPE_1__ ssqd_desc; } ;


 int BUG_ON (int) ;
 unsigned int QDIO_FLAG_PCI_OUT ;
 scalar_t__ QDIO_IQDIO_QFMT ;
 int QDIO_MAX_BUFFERS_PER_Q ;
 unsigned char SLSB_CU_OUTPUT_PRIMED ;
 int atomic_add_return (int,int *) ;
 int fast_requeue ;
 int get_buf_state (struct qdio_q*,int ,unsigned char*,int ) ;
 scalar_t__ multicast_outbound (struct qdio_q*) ;
 scalar_t__ need_siga_sync (struct qdio_q*) ;
 int next_buf (int) ;
 int outbound_call ;
 int pci_request_int ;
 int prev_buf (int) ;
 unsigned long qdio_aob_for_buffer (TYPE_4__*,int) ;
 int qdio_kick_outbound_q (struct qdio_q*,unsigned long) ;
 int qdio_siga_sync_q (struct qdio_q*) ;
 int qperf_inc (struct qdio_q*,int ) ;
 scalar_t__ queue_type (struct qdio_q*) ;
 int set_buf_states (struct qdio_q*,int,unsigned char,int) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static int handle_outbound(struct qdio_q *q, unsigned int callflags,
      int bufnr, int count)
{
 unsigned char state;
 int used, rc = 0;

 qperf_inc(q, outbound_call);

 count = set_buf_states(q, bufnr, SLSB_CU_OUTPUT_PRIMED, count);
 used = atomic_add_return(count, &q->nr_buf_used);
 BUG_ON(used > QDIO_MAX_BUFFERS_PER_Q);

 if (callflags & QDIO_FLAG_PCI_OUT) {
  q->u.out.pci_out_enabled = 1;
  qperf_inc(q, pci_request_int);
 }
 else
  q->u.out.pci_out_enabled = 0;

 if (queue_type(q) == QDIO_IQDIO_QFMT) {
  if (multicast_outbound(q))
   rc = qdio_kick_outbound_q(q, 0);
  else
   if ((q->irq_ptr->ssqd_desc.mmwc > 1) &&
       (count > 1) &&
       (count <= q->irq_ptr->ssqd_desc.mmwc)) {

    q->u.out.use_enh_siga = 1;
    rc = qdio_kick_outbound_q(q, 0);
   } else {
    int b2kick;
    unsigned long phys_aob;





    q->u.out.use_enh_siga = 0;
    b2kick = bufnr;
    while (count--) {
     phys_aob = qdio_aob_for_buffer(
       &q->u.out, b2kick);
     rc = qdio_kick_outbound_q(q, phys_aob);
     if (rc)
      goto out;
     b2kick = next_buf(b2kick);
    }
   }
  goto out;
 }

 if (need_siga_sync(q)) {
  qdio_siga_sync_q(q);
  goto out;
 }


 get_buf_state(q, prev_buf(bufnr), &state, 0);
 if (state != SLSB_CU_OUTPUT_PRIMED)
  rc = qdio_kick_outbound_q(q, 0);
 else
  qperf_inc(q, fast_requeue);

out:
 tasklet_schedule(&q->tasklet);
 return rc;
}
