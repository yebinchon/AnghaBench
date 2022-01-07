
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* cda; void* count; } ;
struct qeth_channel {TYPE_1__ ccw; int ccwdev; } ;
struct qeth_card {struct qeth_channel read; } ;
struct ccw1 {int dummy; } ;
typedef void* __u32 ;


 struct qeth_card* CARD_FROM_CDEV (int ) ;
 int QETH_DBF_TEXT (int ,int,char*) ;
 int READ_CCW ;
 int TRACE ;
 int WRITE_CCW ;
 scalar_t__ __pa (unsigned char*) ;
 int memcpy (TYPE_1__*,int ,int) ;

__attribute__((used)) static void qeth_setup_ccw(struct qeth_channel *channel, unsigned char *iob,
  __u32 len)
{
 struct qeth_card *card;

 QETH_DBF_TEXT(TRACE, 4, "setupccw");
 card = CARD_FROM_CDEV(channel->ccwdev);
 if (channel == &card->read)
  memcpy(&channel->ccw, READ_CCW, sizeof(struct ccw1));
 else
  memcpy(&channel->ccw, WRITE_CCW, sizeof(struct ccw1));
 channel->ccw.count = len;
 channel->ccw.cda = (__u32) __pa(iob);
}
