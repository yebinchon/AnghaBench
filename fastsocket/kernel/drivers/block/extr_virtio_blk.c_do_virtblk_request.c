
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_blk {scalar_t__ sg_elems; int vq; } ;
struct request_queue {struct virtio_blk* queuedata; } ;
struct request {scalar_t__ nr_phys_segments; } ;


 int BUG_ON (int) ;
 struct request* blk_peek_request (struct request_queue*) ;
 int blk_start_request (struct request*) ;
 int blk_stop_queue (struct request_queue*) ;
 int do_req (struct request_queue*,struct virtio_blk*,struct request*) ;
 int virtqueue_kick (int ) ;

__attribute__((used)) static void do_virtblk_request(struct request_queue *q)
{
 struct virtio_blk *vblk = q->queuedata;
 struct request *req;
 unsigned int issued = 0;

 while ((req = blk_peek_request(q)) != ((void*)0)) {
  BUG_ON(req->nr_phys_segments + 2 > vblk->sg_elems);



  if (!do_req(q, vblk, req)) {
   blk_stop_queue(q);
   break;
  }
  blk_start_request(req);
  issued++;
 }

 if (issued)
  virtqueue_kick(vblk->vq);
}
