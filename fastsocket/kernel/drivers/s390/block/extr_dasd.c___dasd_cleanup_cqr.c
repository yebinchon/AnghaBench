
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct request {int dummy; } ;
struct dasd_ccw_req {TYPE_3__* block; scalar_t__ callback_data; } ;
struct TYPE_6__ {TYPE_2__* base; } ;
struct TYPE_5__ {TYPE_1__* discipline; } ;
struct TYPE_4__ {int (* free_cp ) (struct dasd_ccw_req*,struct request*) ;} ;


 int EIO ;
 int __blk_end_request_all (struct request*,int) ;
 int dasd_profile_end (TYPE_3__*,struct dasd_ccw_req*,struct request*) ;
 int stub1 (struct dasd_ccw_req*,struct request*) ;

__attribute__((used)) static void __dasd_cleanup_cqr(struct dasd_ccw_req *cqr)
{
 struct request *req;
 int status;
 int error = 0;

 req = (struct request *) cqr->callback_data;
 dasd_profile_end(cqr->block, cqr, req);
 status = cqr->block->base->discipline->free_cp(cqr, req);
 if (status <= 0)
  error = status ? status : -EIO;
 __blk_end_request_all(req, error);
}
