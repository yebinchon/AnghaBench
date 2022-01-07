
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mapped_device {int dummy; } ;
struct dm_rq_target_io {struct mapped_device* md; } ;
struct dm_rq_clone_bio_info {struct dm_rq_target_io* tio; struct bio* orig; } ;
struct bio {int bi_destructor; struct dm_rq_clone_bio_info* bi_private; int bi_end_io; } ;


 int ENOMEM ;
 struct dm_rq_clone_bio_info* alloc_bio_info (struct mapped_device*) ;
 int dm_rq_bio_destructor ;
 int end_clone_bio ;

__attribute__((used)) static int dm_rq_bio_constructor(struct bio *bio, struct bio *bio_orig,
     void *data)
{
 struct dm_rq_target_io *tio = data;
 struct mapped_device *md = tio->md;
 struct dm_rq_clone_bio_info *info = alloc_bio_info(md);

 if (!info)
  return -ENOMEM;

 info->orig = bio_orig;
 info->tio = tio;
 bio->bi_end_io = end_clone_bio;
 bio->bi_private = info;
 bio->bi_destructor = dm_rq_bio_destructor;

 return 0;
}
