
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qeth_card {int napi; TYPE_1__* dev; } ;
struct ccw_device {int dummy; } ;
struct TYPE_2__ {int flags; } ;


 int IFF_UP ;
 int napi_schedule (int *) ;

void qeth_qdio_start_poll(struct ccw_device *ccwdev, int queue,
  unsigned long card_ptr)
{
 struct qeth_card *card = (struct qeth_card *)card_ptr;

 if (card->dev && (card->dev->flags & IFF_UP))
  napi_schedule(&card->napi);
}
