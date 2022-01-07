
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int no_out_queues; scalar_t__* out_qs; } ;
struct qeth_card {TYPE_1__ qdio; } ;


 int QETH_DBF_TEXT (int ,int,char*) ;
 int TRACE ;
 int qeth_clear_outq_buffers (scalar_t__,int ) ;

void qeth_clear_qdio_buffers(struct qeth_card *card)
{
 int i;

 QETH_DBF_TEXT(TRACE, 2, "clearqdbf");

 for (i = 0; i < card->qdio.no_out_queues; ++i)
  if (card->qdio.out_qs[i])
   qeth_clear_outq_buffers(card->qdio.out_qs[i], 0);
}
