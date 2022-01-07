
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_bio_pair {int err; struct nvme_bio_pair* bv2; struct nvme_bio_pair* bv1; int parent; int cnt; } ;
struct bio {struct nvme_bio_pair* bi_private; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int bio_endio (int ,int) ;
 int kfree (struct nvme_bio_pair*) ;

__attribute__((used)) static void nvme_bio_pair_endio(struct bio *bio, int err)
{
 struct nvme_bio_pair *bp = bio->bi_private;

 if (err)
  bp->err = err;

 if (atomic_dec_and_test(&bp->cnt)) {
  bio_endio(bp->parent, bp->err);
  kfree(bp->bv1);
  kfree(bp->bv2);
  kfree(bp);
 }
}
