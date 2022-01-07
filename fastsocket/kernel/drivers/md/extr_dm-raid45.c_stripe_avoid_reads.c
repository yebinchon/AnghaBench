
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct stripe_chunk {int dummy; } ;
struct TYPE_4__ {unsigned int parity; } ;
struct stripe {int sc; TYPE_2__ idx; } ;
struct TYPE_3__ {unsigned int raid_devs; } ;
struct raid_set {scalar_t__ stats; TYPE_1__ set; } ;


 int ClearChunkIo (struct stripe_chunk*) ;
 struct raid_set* RS (int ) ;
 scalar_t__ S_PROHIBITCHUNKIO ;
 int SetChunkIo (struct stripe_chunk*) ;
 int atomic_inc (scalar_t__) ;
 scalar_t__ chunk_ref (struct stripe_chunk*) ;
 struct stripe_chunk* stripe_chunk_check (struct stripe*,unsigned int,unsigned int*) ;

__attribute__((used)) static void stripe_avoid_reads(struct stripe *stripe)
{
 struct raid_set *rs = RS(stripe->sc);
 unsigned dummy = 0, p = rs->set.raid_devs;


 while (p--) {
  struct stripe_chunk *chunk =
   stripe_chunk_check(stripe, p, &dummy);

  if (!chunk)
   continue;


  if (chunk_ref(chunk) || p == stripe->idx.parity)
   SetChunkIo(chunk);
  else {
   ClearChunkIo(chunk);

   atomic_inc(RS(stripe->sc)->stats + S_PROHIBITCHUNKIO);
  }
 }
}
