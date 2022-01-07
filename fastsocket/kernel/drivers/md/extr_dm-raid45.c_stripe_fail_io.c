
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stripe_chunk {struct bio_list* bl; } ;
struct stripe {int sc; } ;
struct TYPE_2__ {unsigned int raid_devs; } ;
struct raid_set {TYPE_1__ set; } ;
struct bio_list {int dummy; } ;


 int ARRAY_SIZE (struct bio_list*) ;
 int BUG_ON (int ) ;
 struct stripe_chunk* CHUNK (struct stripe*,unsigned int) ;
 int EIO ;
 struct raid_set* RS (int ) ;
 int bio_list_empty (struct bio_list*) ;
 int bio_list_endio (struct stripe*,struct bio_list*,unsigned int,int ) ;
 int stripe_io_ref (struct stripe*) ;
 int stripe_ref (struct stripe*) ;

__attribute__((used)) static void stripe_fail_io(struct stripe *stripe)
{
 struct raid_set *rs = RS(stripe->sc);
 unsigned p = rs->set.raid_devs;

 while (p--) {
  struct stripe_chunk *chunk = CHUNK(stripe, p);
  int i = ARRAY_SIZE(chunk->bl);


  while (i--) {
   struct bio_list *bl = chunk->bl + i;

   if (!bio_list_empty(bl))
    bio_list_endio(stripe, bl, p, -EIO);
  }
 }


 BUG_ON(stripe_io_ref(stripe));
 BUG_ON(stripe_ref(stripe));
}
