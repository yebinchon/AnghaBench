
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {struct memstick_dev* queuedata; } ;
struct request {int dummy; } ;
struct mspro_block_data {int has_request; scalar_t__ eject; } ;
struct memstick_dev {int dummy; } ;


 int ENODEV ;
 int __blk_end_request_all (struct request*,int ) ;
 struct request* blk_fetch_request (struct request_queue*) ;
 struct mspro_block_data* memstick_get_drvdata (struct memstick_dev*) ;
 scalar_t__ mspro_block_issue_req (struct memstick_dev*,int ) ;

__attribute__((used)) static void mspro_block_submit_req(struct request_queue *q)
{
 struct memstick_dev *card = q->queuedata;
 struct mspro_block_data *msb = memstick_get_drvdata(card);
 struct request *req = ((void*)0);

 if (msb->has_request)
  return;

 if (msb->eject) {
  while ((req = blk_fetch_request(q)) != ((void*)0))
   __blk_end_request_all(req, -ENODEV);

  return;
 }

 msb->has_request = 1;
 if (mspro_block_issue_req(card, 0))
  msb->has_request = 0;
}
