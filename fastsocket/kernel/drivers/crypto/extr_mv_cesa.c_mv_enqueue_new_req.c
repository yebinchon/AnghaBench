
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct req_progress {int dummy; } ;
struct ablkcipher_request {int dst; int nbytes; int src; } ;
struct TYPE_3__ {int dst_sg_it; int src_sg_it; } ;
struct TYPE_4__ {TYPE_1__ p; struct ablkcipher_request* cur_req; } ;


 int SG_MITER_FROM_SG ;
 int SG_MITER_TO_SG ;
 int count_sgs (int ,int ) ;
 TYPE_2__* cpg ;
 int memset (TYPE_1__*,int ,int) ;
 int mv_process_current_q (int) ;
 int sg_miter_start (int *,int ,int,int ) ;

__attribute__((used)) static void mv_enqueue_new_req(struct ablkcipher_request *req)
{
 int num_sgs;

 cpg->cur_req = req;
 memset(&cpg->p, 0, sizeof(struct req_progress));

 num_sgs = count_sgs(req->src, req->nbytes);
 sg_miter_start(&cpg->p.src_sg_it, req->src, num_sgs, SG_MITER_FROM_SG);

 num_sgs = count_sgs(req->dst, req->nbytes);
 sg_miter_start(&cpg->p.dst_sg_it, req->dst, num_sgs, SG_MITER_TO_SG);
 mv_process_current_q(1);
}
