
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {int bio_set; } ;
struct bio {int bi_destructor; } ;
typedef int gfp_t ;


 struct bio* bio_alloc (int ,int) ;
 struct bio* bio_alloc_bioset (int ,int,int ) ;
 int mddev_bio_destructor ;

struct bio *bio_alloc_mddev(gfp_t gfp_mask, int nr_iovecs,
       struct mddev *mddev)
{
 struct bio *b;
 struct mddev **mddevp;

 if (!mddev || !mddev->bio_set)
  return bio_alloc(gfp_mask, nr_iovecs);

 b = bio_alloc_bioset(gfp_mask, nr_iovecs,
        mddev->bio_set);
 if (!b)
  return ((void*)0);
 mddevp = (void*)b;
 mddevp[-1] = mddev;
 b->bi_destructor = mddev_bio_destructor;
 return b;
}
