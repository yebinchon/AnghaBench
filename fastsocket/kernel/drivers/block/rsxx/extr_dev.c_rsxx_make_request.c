
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct rsxx_cardinfo {int halt; int dma_fault; int gendisk; } ;
struct rsxx_bio_meta {int pending_dmas; int start_time; int error; struct bio* bio; } ;
struct request_queue {struct rsxx_cardinfo* queuedata; } ;
struct bio {scalar_t__ bi_sector; int bi_size; } ;


 int CARD_TO_DEV (struct rsxx_cardinfo*) ;
 int EFAULT ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int atomic_set (int *,int ) ;
 scalar_t__ bio_data_dir (struct bio*) ;
 int bio_dma_done_cb ;
 int bio_endio (struct bio*,int) ;
 int bio_meta_pool ;
 int dev_dbg (int ,char*,char,struct rsxx_bio_meta*,int,int) ;
 int dev_err (int ,char*) ;
 int disk_stats_start (struct rsxx_cardinfo*,struct bio*) ;
 scalar_t__ get_capacity (int ) ;
 int jiffies ;
 struct rsxx_bio_meta* kmem_cache_alloc (int ,int ) ;
 int kmem_cache_free (int ,struct rsxx_bio_meta*) ;
 int might_sleep () ;
 int rsxx_dma_queue_bio (struct rsxx_cardinfo*,struct bio*,int *,int ,struct rsxx_bio_meta*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int rsxx_make_request(struct request_queue *q, struct bio *bio)
{
 struct rsxx_cardinfo *card = q->queuedata;
 struct rsxx_bio_meta *bio_meta;
 int st = -EINVAL;

 might_sleep();

 if (!card)
  goto req_err;

 if (bio->bi_sector + (bio->bi_size >> 9) > get_capacity(card->gendisk))
  goto req_err;

 if (unlikely(card->halt)) {
  st = -EFAULT;
  goto req_err;
 }

 if (unlikely(card->dma_fault)) {
  st = (-EFAULT);
  goto req_err;
 }

 if (bio->bi_size == 0) {
  dev_err(CARD_TO_DEV(card), "size zero BIO!\n");
  goto req_err;
 }

 bio_meta = kmem_cache_alloc(bio_meta_pool, GFP_KERNEL);
 if (!bio_meta) {
  st = -ENOMEM;
  goto req_err;
 }

 bio_meta->bio = bio;
 atomic_set(&bio_meta->error, 0);
 atomic_set(&bio_meta->pending_dmas, 0);
 bio_meta->start_time = jiffies;

 if (!unlikely(card->halt))
  disk_stats_start(card, bio);

 dev_dbg(CARD_TO_DEV(card), "BIO[%c]: meta: %p addr8: x%llx size: %d\n",
   bio_data_dir(bio) ? 'W' : 'R', bio_meta,
   (u64)bio->bi_sector << 9, bio->bi_size);

 st = rsxx_dma_queue_bio(card, bio, &bio_meta->pending_dmas,
        bio_dma_done_cb, bio_meta);
 if (st)
  goto queue_err;

 return 0;

queue_err:
 kmem_cache_free(bio_meta_pool, bio_meta);
req_err:
 bio_endio(bio, st);

 return 0;
}
