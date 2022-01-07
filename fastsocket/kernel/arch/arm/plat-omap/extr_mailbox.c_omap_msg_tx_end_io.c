
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int q; int special; } ;


 int __blk_put_request (int ,struct request*) ;
 int kfree (int ) ;

__attribute__((used)) static void omap_msg_tx_end_io(struct request *rq, int error)
{
 kfree(rq->special);
 __blk_put_request(rq->q, rq);
}
