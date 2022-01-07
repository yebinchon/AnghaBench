
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virtio_blk {TYPE_1__* disk; } ;
struct request {int cmd_type; } ;
struct gendisk {struct virtio_blk* private_data; } ;
struct bio {int cmd_type; } ;
struct TYPE_2__ {int queue; } ;


 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct request*) ;
 int PTR_ERR (struct request*) ;
 int REQ_TYPE_SPECIAL ;
 int VIRTIO_BLK_ID_BYTES ;
 struct request* bio_map_kern (int ,char*,int ,int ) ;
 int bio_put (struct request*) ;
 int blk_execute_rq (int ,TYPE_1__*,struct request*,int) ;
 struct request* blk_make_request (int ,struct request*,int ) ;
 int blk_put_request (struct request*) ;

__attribute__((used)) static int virtblk_get_id(struct gendisk *disk, char *id_str)
{
 struct virtio_blk *vblk = disk->private_data;
 struct request *req;
 struct bio *bio;
 int err;

 bio = bio_map_kern(vblk->disk->queue, id_str, VIRTIO_BLK_ID_BYTES,
      GFP_KERNEL);
 if (IS_ERR(bio))
  return PTR_ERR(bio);

 req = blk_make_request(vblk->disk->queue, bio, GFP_KERNEL);
 if (IS_ERR(req)) {
  bio_put(bio);
  return PTR_ERR(req);
 }

 req->cmd_type = REQ_TYPE_SPECIAL;
 err = blk_execute_rq(vblk->disk->queue, vblk->disk, req, 0);
 blk_put_request(req);

 return err;
}
