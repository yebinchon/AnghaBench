
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ cq; } ;
struct qeth_card {scalar_t__ state; TYPE_1__ options; } ;
typedef enum qeth_cq { ____Placeholder_qeth_cq } qeth_cq ;


 scalar_t__ CARD_STATE_DOWN ;
 scalar_t__ CARD_STATE_RECOVER ;
 scalar_t__ QETH_CQ_NOTAVAILABLE ;
 int qeth_free_qdio_buffers (struct qeth_card*) ;

int qeth_configure_cq(struct qeth_card *card, enum qeth_cq cq)
{
 int rc;

 if (card->options.cq == QETH_CQ_NOTAVAILABLE) {
  rc = -1;
  goto out;
 } else {
  if (card->options.cq == cq) {
   rc = 0;
   goto out;
  }

  if (card->state != CARD_STATE_DOWN &&
      card->state != CARD_STATE_RECOVER) {
   rc = -1;
   goto out;
  }

  qeth_free_qdio_buffers(card);
  card->options.cq = cq;
  rc = 0;
 }
out:
 return rc;

}
