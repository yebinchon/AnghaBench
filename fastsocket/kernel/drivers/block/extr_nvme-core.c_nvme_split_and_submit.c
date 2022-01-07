
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_queue {int sq_cong; int sq_cong_wait; int sq_full; } ;
struct nvme_bio_pair {int b2; int b1; } ;
struct bio {int dummy; } ;


 int ENOMEM ;
 int add_wait_queue (int *,int *) ;
 int bio_list_add (int *,int *) ;
 scalar_t__ bio_list_empty (int *) ;
 struct nvme_bio_pair* nvme_bio_split (struct bio*,int,int,int) ;

__attribute__((used)) static int nvme_split_and_submit(struct bio *bio, struct nvme_queue *nvmeq,
      int idx, int len, int offset)
{
 struct nvme_bio_pair *bp = nvme_bio_split(bio, idx, len, offset);
 if (!bp)
  return -ENOMEM;

 if (bio_list_empty(&nvmeq->sq_cong))
  add_wait_queue(&nvmeq->sq_full, &nvmeq->sq_cong_wait);
 bio_list_add(&nvmeq->sq_cong, &bp->b1);
 bio_list_add(&nvmeq->sq_cong, &bp->b2);

 return 0;
}
