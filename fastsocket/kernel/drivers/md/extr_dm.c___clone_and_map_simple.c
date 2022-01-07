
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dm_target_io {int dummy; } ;
struct dm_target {int dummy; } ;
struct clone_info {int sector_count; TYPE_1__* md; scalar_t__ idx; int sector; struct bio* bio; } ;
struct bio {scalar_t__ bi_vcnt; } ;
struct TYPE_2__ {int bs; } ;


 int __map_bio (struct dm_target*,struct bio*,struct dm_target_io*) ;
 struct dm_target_io* alloc_tio (struct clone_info*,struct dm_target*) ;
 struct bio* clone_bio (struct bio*,int ,scalar_t__,scalar_t__,int ,int ) ;

__attribute__((used)) static void __clone_and_map_simple(struct clone_info *ci, struct dm_target *ti)
{
 struct bio *clone, *bio = ci->bio;
 struct dm_target_io *tio;

 tio = alloc_tio(ci, ti);
 clone = clone_bio(bio, ci->sector, ci->idx,
     bio->bi_vcnt - ci->idx, ci->sector_count,
     ci->md->bs);
 __map_bio(ti, clone, tio);
 ci->sector_count = 0;
}
