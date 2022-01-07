
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stripe_chunk {int dummy; } ;
struct stripe {int sc; } ;
struct raid_set {unsigned int dev; scalar_t__ stats; } ;


 struct stripe_chunk* CHUNK (struct stripe*,unsigned int) ;
 scalar_t__ ChunkError (struct stripe_chunk*) ;
 scalar_t__ ChunkLocked (struct stripe_chunk*) ;
 scalar_t__ ChunkUptodate (struct stripe_chunk*) ;
 scalar_t__ DevFailed (unsigned int) ;
 struct raid_set* RS (int ) ;
 scalar_t__ S_CHUNK_LOCKED ;
 int atomic_inc (scalar_t__) ;

__attribute__((used)) static struct stripe_chunk *
stripe_chunk_check(struct stripe *stripe, unsigned p, unsigned *chunks_uptodate)
{
 struct raid_set *rs = RS(stripe->sc);
 struct stripe_chunk *chunk = CHUNK(stripe, p);


 if (ChunkLocked(chunk)) {

  atomic_inc(rs->stats + S_CHUNK_LOCKED);
  return ((void*)0);
 }


 if (ChunkError(chunk) || DevFailed(rs->dev + p))
  return ((void*)0);


 if (ChunkUptodate(chunk)) {
  (*chunks_uptodate)++;
  return ((void*)0);
 }

 return chunk;
}
