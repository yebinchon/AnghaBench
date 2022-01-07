
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dasd_eckd_private {int dummy; } ;
struct dasd_ccw_req {int expires; scalar_t__ retries; int flags; int * callback_data; int callback; } ;
struct dasd_block {TYPE_1__* base; } ;
struct TYPE_2__ {scalar_t__ private; } ;


 int DASD_CQR_FLAGS_USE_ERP ;
 int EAGAIN ;
 int HZ ;
 scalar_t__ IS_ERR (struct dasd_ccw_req*) ;
 int PTR_ERR (struct dasd_ccw_req*) ;
 int clear_bit (int ,int *) ;
 int dasd_add_request_head (struct dasd_ccw_req*) ;
 int dasd_eckd_analysis_callback ;
 struct dasd_ccw_req* dasd_eckd_analysis_ccw (TYPE_1__*) ;

__attribute__((used)) static int dasd_eckd_start_analysis(struct dasd_block *block)
{
 struct dasd_eckd_private *private;
 struct dasd_ccw_req *init_cqr;

 private = (struct dasd_eckd_private *) block->base->private;
 init_cqr = dasd_eckd_analysis_ccw(block->base);
 if (IS_ERR(init_cqr))
  return PTR_ERR(init_cqr);
 init_cqr->callback = dasd_eckd_analysis_callback;
 init_cqr->callback_data = ((void*)0);
 init_cqr->expires = 5*HZ;



 clear_bit(DASD_CQR_FLAGS_USE_ERP, &init_cqr->flags);
 init_cqr->retries = 0;
 dasd_add_request_head(init_cqr);
 return -EAGAIN;
}
