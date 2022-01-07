
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union map_info {int dummy; } map_info ;
struct dm_target {int dummy; } ;
struct bio {int dummy; } ;


 int DM_MAPIO_SUBMITTED ;
 int EIO ;



 int bio_endio (struct bio*,int ) ;
 int bio_rw (struct bio*) ;
 int zero_fill_bio (struct bio*) ;

__attribute__((used)) static int zero_map(struct dm_target *ti, struct bio *bio,
        union map_info *map_context)
{
 switch(bio_rw(bio)) {
 case 130:
  zero_fill_bio(bio);
  break;
 case 129:

  return -EIO;
 case 128:

  break;
 }

 bio_endio(bio, 0);


 return DM_MAPIO_SUBMITTED;
}
