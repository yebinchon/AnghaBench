
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mapped_device {int bs; } ;
struct dm_rq_clone_bio_info {TYPE_1__* tio; } ;
struct bio {struct dm_rq_clone_bio_info* bi_private; } ;
struct TYPE_2__ {struct mapped_device* md; } ;


 int bio_free (struct bio*,int ) ;
 int free_bio_info (struct dm_rq_clone_bio_info*) ;

__attribute__((used)) static void dm_rq_bio_destructor(struct bio *bio)
{
 struct dm_rq_clone_bio_info *info = bio->bi_private;
 struct mapped_device *md = info->tio->md;

 free_bio_info(info);
 bio_free(bio, md->bs);
}
