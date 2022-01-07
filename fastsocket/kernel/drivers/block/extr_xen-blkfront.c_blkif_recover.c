
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct request {int dummy; } ;
struct blkif_request {int id; int nr_segments; TYPE_1__* seg; } ;
struct TYPE_6__ {int req_prod_pvt; } ;
struct blkfront_info {int connected; TYPE_2__* xbdev; TYPE_3__ ring; struct blk_shadow* shadow; int shadow_free; } ;
struct blk_shadow {scalar_t__ request; struct blkif_request req; int * frame; } ;
typedef int copy ;
struct TYPE_5__ {int otherend_id; } ;
struct TYPE_4__ {int gref; } ;


 int BLKIF_STATE_CONNECTED ;
 int BLK_RING_SIZE ;
 int ENOMEM ;
 int GFP_NOIO ;
 struct blkif_request* RING_GET_REQUEST (TYPE_3__*,int ) ;
 int XenbusStateConnected ;
 int __GFP_HIGH ;
 int __GFP_REPEAT ;
 int blkif_io_lock ;
 int flush_requests (struct blkfront_info*) ;
 size_t get_id_from_freelist (struct blkfront_info*) ;
 int gnttab_grant_foreign_access_ref (int ,int ,int ,int ) ;
 int kfree (struct blk_shadow*) ;
 int kick_pending_request_queues (struct blkfront_info*) ;
 struct blk_shadow* kmalloc (int,int) ;
 int memcpy (struct blk_shadow*,struct blk_shadow*,int) ;
 int memset (struct blk_shadow**,int ,int) ;
 int pfn_to_mfn (int ) ;
 int rq_data_dir (struct request*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int xenbus_switch_state (TYPE_2__*,int ) ;

__attribute__((used)) static int blkif_recover(struct blkfront_info *info)
{
 int i;
 struct blkif_request *req;
 struct blk_shadow *copy;
 int j;


 copy = kmalloc(sizeof(info->shadow),
         GFP_NOIO | __GFP_REPEAT | __GFP_HIGH);
 if (!copy)
  return -ENOMEM;
 memcpy(copy, info->shadow, sizeof(info->shadow));


 memset(&info->shadow, 0, sizeof(info->shadow));
 for (i = 0; i < BLK_RING_SIZE; i++)
  info->shadow[i].req.id = i+1;
 info->shadow_free = info->ring.req_prod_pvt;
 info->shadow[BLK_RING_SIZE-1].req.id = 0x0fffffff;


 for (i = 0; i < BLK_RING_SIZE; i++) {

  if (copy[i].request == 0)
   continue;


  req = RING_GET_REQUEST(&info->ring, info->ring.req_prod_pvt);
  *req = copy[i].req;


  req->id = get_id_from_freelist(info);
  memcpy(&info->shadow[req->id], &copy[i], sizeof(copy[i]));


  for (j = 0; j < req->nr_segments; j++)
   gnttab_grant_foreign_access_ref(
    req->seg[j].gref,
    info->xbdev->otherend_id,
    pfn_to_mfn(info->shadow[req->id].frame[j]),
    rq_data_dir(
     (struct request *)
     info->shadow[req->id].request));
  info->shadow[req->id].req = *req;

  info->ring.req_prod_pvt++;
 }

 kfree(copy);

 xenbus_switch_state(info->xbdev, XenbusStateConnected);

 spin_lock_irq(&blkif_io_lock);


 info->connected = BLKIF_STATE_CONNECTED;


 flush_requests(info);


 kick_pending_request_queues(info);

 spin_unlock_irq(&blkif_io_lock);

 return 0;
}
