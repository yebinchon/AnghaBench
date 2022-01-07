
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ no_in_queues; TYPE_2__* c_q; } ;
struct TYPE_4__ {scalar_t__ cq; } ;
struct qeth_card {TYPE_3__ qdio; TYPE_1__ options; } ;
struct qdio_buffer {int dummy; } ;
struct TYPE_5__ {int next_buf_to_init; int qdio_bufs; } ;


 int CARD_DDEV (struct qeth_card*) ;
 int QDIO_FLAG_SYNC_INPUT ;
 int QDIO_MAX_BUFFERS_PER_Q ;
 scalar_t__ QETH_CQ_ENABLED ;
 int QETH_DBF_TEXT (int ,int,char*) ;
 int QETH_DBF_TEXT_ (int ,int,char*,int) ;
 int SETUP ;
 int do_QDIO (int ,int ,scalar_t__,int ,int) ;
 int memset (int ,int ,int) ;

__attribute__((used)) static inline int qeth_cq_init(struct qeth_card *card)
{
 int rc;

 if (card->options.cq == QETH_CQ_ENABLED) {
  QETH_DBF_TEXT(SETUP, 2, "cqinit");
  memset(card->qdio.c_q->qdio_bufs, 0,
         QDIO_MAX_BUFFERS_PER_Q * sizeof(struct qdio_buffer));
  card->qdio.c_q->next_buf_to_init = 127;
  rc = do_QDIO(CARD_DDEV(card), QDIO_FLAG_SYNC_INPUT,
        card->qdio.no_in_queues - 1, 0,
        127);
  if (rc) {
   QETH_DBF_TEXT_(SETUP, 2, "1err%d", rc);
   goto out;
  }
 }
 rc = 0;
out:
 return rc;
}
