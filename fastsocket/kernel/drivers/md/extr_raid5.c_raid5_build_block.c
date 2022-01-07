
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct stripe_head {struct r5dev* dev; } ;
struct TYPE_3__ {int bv_page; } ;
struct TYPE_4__ {struct stripe_head* bi_private; int bi_max_vecs; int bi_vcnt; TYPE_1__* bi_io_vec; } ;
struct r5dev {int sector; scalar_t__ flags; int page; TYPE_1__ rvec; TYPE_2__ rreq; TYPE_1__ vec; TYPE_2__ req; } ;


 int bio_init (TYPE_2__*) ;
 int compute_blocknr (struct stripe_head*,int,int) ;

__attribute__((used)) static void raid5_build_block(struct stripe_head *sh, int i, int previous)
{
 struct r5dev *dev = &sh->dev[i];

 bio_init(&dev->req);
 dev->req.bi_io_vec = &dev->vec;
 dev->req.bi_vcnt++;
 dev->req.bi_max_vecs++;
 dev->req.bi_private = sh;
 dev->vec.bv_page = dev->page;

 bio_init(&dev->rreq);
 dev->rreq.bi_io_vec = &dev->rvec;
 dev->rreq.bi_vcnt++;
 dev->rreq.bi_max_vecs++;
 dev->rreq.bi_private = sh;
 dev->rvec.bv_page = dev->page;

 dev->flags = 0;
 dev->sector = compute_blocknr(sh, i, previous);
}
