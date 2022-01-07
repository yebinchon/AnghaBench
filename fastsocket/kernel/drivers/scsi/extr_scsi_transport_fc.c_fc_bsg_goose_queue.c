
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc_rport {int dev; int rqst_q; } ;


 int blk_run_queue_async (int ) ;
 int get_device (int *) ;
 int put_device (int *) ;

__attribute__((used)) static void
fc_bsg_goose_queue(struct fc_rport *rport)
{
 if (!rport->rqst_q)
  return;




 get_device(&rport->dev);
 blk_run_queue_async(rport->rqst_q);
 put_device(&rport->dev);
}
