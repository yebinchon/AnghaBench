
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_qdio_out_buffer {int q; int * aob; int state; } ;
struct qeth_card {int dummy; } ;
struct qaob {scalar_t__ aorc; scalar_t__ user1; } ;
typedef enum iucv_tx_notify { ____Placeholder_iucv_tx_notify } iucv_tx_notify ;


 int BUG_ON (int) ;
 int QETH_DBF_TEXT_ (int ,int,char*,scalar_t__) ;
 int QETH_QDIO_BUF_HANDLED_DELAYED ;
 int QETH_QDIO_BUF_IN_CQ ;
 scalar_t__ QETH_QDIO_BUF_PENDING ;
 scalar_t__ QETH_QDIO_BUF_PRIMED ;
 int TRACE ;
 int TX_NOTIFY_DELAYED_OK ;
 int TX_NOTIFY_OK ;
 scalar_t__ atomic_cmpxchg (int *,scalar_t__,int ) ;
 scalar_t__ atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 scalar_t__ phys_to_virt (unsigned long) ;
 int qdio_release_aob (struct qaob*) ;
 int qeth_clear_output_buffer (int ,struct qeth_qdio_out_buffer*,int ) ;
 int qeth_compute_cq_notification (scalar_t__,int) ;
 int qeth_notify_skbs (int ,struct qeth_qdio_out_buffer*,int) ;

__attribute__((used)) static inline void qeth_qdio_handle_aob(struct qeth_card *card,
  unsigned long phys_aob_addr) {
 struct qaob *aob;
 struct qeth_qdio_out_buffer *buffer;
 enum iucv_tx_notify notification;

 aob = (struct qaob *) phys_to_virt(phys_aob_addr);
 buffer = (struct qeth_qdio_out_buffer *) aob->user1;

 BUG_ON(buffer == ((void*)0));

 if (atomic_cmpxchg(&buffer->state, QETH_QDIO_BUF_PRIMED,
      QETH_QDIO_BUF_IN_CQ) == QETH_QDIO_BUF_PRIMED) {
  notification = TX_NOTIFY_OK;
 } else {
  BUG_ON(atomic_read(&buffer->state) != QETH_QDIO_BUF_PENDING);
  atomic_set(&buffer->state, QETH_QDIO_BUF_IN_CQ);
  notification = TX_NOTIFY_DELAYED_OK;
 }

 if (aob->aorc != 0) {
  QETH_DBF_TEXT_(TRACE, 2, "aorc%02X", aob->aorc);
  notification = qeth_compute_cq_notification(aob->aorc, 1);
 }
 qeth_notify_skbs(buffer->q, buffer, notification);

 buffer->aob = ((void*)0);
 qeth_clear_output_buffer(buffer->q, buffer,
     QETH_QDIO_BUF_HANDLED_DELAYED);


 qdio_release_aob(aob);
}
