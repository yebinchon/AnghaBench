
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {int bio_set; } ;
struct bio {int bi_destructor; int bi_max_vecs; } ;
typedef int gfp_t ;


 int __bio_clone (struct bio*,struct bio*) ;
 struct bio* bio_alloc_bioset (int ,int ,int ) ;
 struct bio* bio_clone (struct bio*,int ) ;
 scalar_t__ bio_integrity (struct bio*) ;
 int bio_integrity_clone (struct bio*,struct bio*,int ,int ) ;
 int bio_put (struct bio*) ;
 int mddev_bio_destructor ;

struct bio *bio_clone_mddev(struct bio *bio, gfp_t gfp_mask,
       struct mddev *mddev)
{
 struct bio *b;
 struct mddev **mddevp;

 if (!mddev || !mddev->bio_set)
  return bio_clone(bio, gfp_mask);

 b = bio_alloc_bioset(gfp_mask, bio->bi_max_vecs,
        mddev->bio_set);
 if (!b)
  return ((void*)0);
 mddevp = (void*)b;
 mddevp[-1] = mddev;
 b->bi_destructor = mddev_bio_destructor;
 __bio_clone(b, bio);
 if (bio_integrity(bio)) {
  int ret;

  ret = bio_integrity_clone(b, bio, gfp_mask, mddev->bio_set);

  if (ret < 0) {
   bio_put(b);
   return ((void*)0);
  }
 }

 return b;
}
