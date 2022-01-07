
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stripe_chunk {int dummy; } ;
struct stripe {int sc; } ;
struct TYPE_2__ {unsigned int raid_devs; } ;
struct raid_set {TYPE_1__ set; } ;
struct bio_list {int dummy; } ;


 struct bio_list* BL_CHUNK (struct stripe_chunk*,int) ;
 int BUG_ON (int) ;
 struct stripe_chunk* CHUNK (struct stripe*,unsigned int) ;
 scalar_t__ ChunkDirty (struct stripe_chunk*) ;
 scalar_t__ ChunkError (struct stripe_chunk*) ;
 int ChunkLocked (struct stripe_chunk*) ;
 int ChunkUptodate (struct stripe_chunk*) ;
 int EIO ;
 int READ ;
 struct raid_set* RS (int ) ;
 int RSDead (struct raid_set*) ;
 int RSDegraded (struct raid_set*) ;
 scalar_t__ bio_list_empty (struct bio_list*) ;
 int bio_list_endio (struct stripe*,struct bio_list*,unsigned int,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void stripe_endio(int rw, struct stripe *stripe)
{
 struct raid_set *rs = RS(stripe->sc);
 unsigned p = rs->set.raid_devs;
 int write = (rw != READ);

 while (p--) {
  struct stripe_chunk *chunk = CHUNK(stripe, p);
  struct bio_list *bl;

  BUG_ON(ChunkLocked(chunk));

  bl = BL_CHUNK(chunk, rw);
  if (bio_list_empty(bl))
   continue;

  if (unlikely(ChunkError(chunk) || !ChunkUptodate(chunk))) {

   if (unlikely(RSDead(rs)))
    bio_list_endio(stripe, bl, p, -EIO);

   else if (write)
    bio_list_endio(stripe, bl, p, 0);
  } else {
   BUG_ON(!RSDegraded(rs) && ChunkDirty(chunk));
   bio_list_endio(stripe, bl, p, 0);
  }
 }
}
