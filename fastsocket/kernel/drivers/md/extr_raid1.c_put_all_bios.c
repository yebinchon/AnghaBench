
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r1conf {int raid_disks; } ;
struct r1bio {struct bio** bios; } ;
struct bio {int dummy; } ;


 int BIO_SPECIAL (struct bio*) ;
 int bio_put (struct bio*) ;

__attribute__((used)) static void put_all_bios(struct r1conf *conf, struct r1bio *r1_bio)
{
 int i;

 for (i = 0; i < conf->raid_disks * 2; i++) {
  struct bio **bio = r1_bio->bios + i;
  if (!BIO_SPECIAL(*bio))
   bio_put(*bio);
  *bio = ((void*)0);
 }
}
