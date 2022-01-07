
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_snapshot {int origin; } ;
struct bio {struct bio* bi_next; } ;


 int DM_MAPIO_REMAPPED ;
 int do_origin (int ,struct bio*) ;
 int generic_make_request (struct bio*) ;

__attribute__((used)) static void retry_origin_bios(struct dm_snapshot *s, struct bio *bio)
{
 struct bio *n;
 int r;

 while (bio) {
  n = bio->bi_next;
  bio->bi_next = ((void*)0);
  r = do_origin(s->origin, bio);
  if (r == DM_MAPIO_REMAPPED)
   generic_make_request(bio);
  bio = n;
 }
}
