
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct stripe_chunk {int dummy; } ;
struct TYPE_4__ {unsigned int parity; } ;
struct stripe {TYPE_2__ idx; int sc; } ;
struct TYPE_3__ {unsigned int raid_devs; unsigned int data_devs; } ;
struct raid_set {scalar_t__ stats; TYPE_1__ set; scalar_t__ dev; } ;


 int BL_CHUNK (struct stripe_chunk*,int ) ;
 int BUG_ON (int ) ;
 struct stripe_chunk* CHUNK (struct stripe*,unsigned int) ;
 int ClearChunkIo (struct stripe_chunk*) ;
 scalar_t__ DevFailed (scalar_t__) ;
 int EPERM ;
 int READ ;
 struct raid_set* RS (int ) ;
 scalar_t__ RSCheckOverwrite (struct raid_set*) ;
 scalar_t__ S_CANT_MERGE ;
 scalar_t__ S_CAN_MERGE ;
 scalar_t__ S_OVERWRITE ;
 scalar_t__ S_PROHIBITCHUNKIO ;
 int SetChunkIo (struct stripe_chunk*) ;
 int SetStripeReconstruct (struct stripe*) ;
 int StripeReconstruct (struct stripe*) ;
 int WRITE_MERGED ;
 int WRITE_QUEUED ;
 int atomic_inc (scalar_t__) ;
 scalar_t__ bio_list_empty (int ) ;
 int parity_xor (struct stripe*) ;
 scalar_t__ stripe_check_chunk_overwrite (struct stripe*,unsigned int) ;
 struct stripe_chunk* stripe_chunk_check (struct stripe*,unsigned int,unsigned int*) ;
 int stripe_zero_chunk (struct stripe*,unsigned int) ;

__attribute__((used)) static int stripe_merge_possible(struct stripe *stripe, int nosync)
{
 struct raid_set *rs = RS(stripe->sc);
 unsigned chunks_overwrite = 0, chunks_prohibited = 0,
   chunks_uptodate = 0, p = rs->set.raid_devs;


 while (p--) {
  struct stripe_chunk *chunk;


  if (DevFailed(rs->dev + p)) {
   chunk = CHUNK(stripe, p);
   goto prohibit_io;
  }


  chunk = stripe_chunk_check(stripe, p, &chunks_uptodate);
  if (!chunk || nosync)
   continue;







  if (p != stripe->idx.parity &&
      bio_list_empty(BL_CHUNK(chunk, READ)) &&
      bio_list_empty(BL_CHUNK(chunk, WRITE_MERGED))) {
   if (bio_list_empty(BL_CHUNK(chunk, WRITE_QUEUED)))
    goto prohibit_io;
   else if (RSCheckOverwrite(rs) &&
     stripe_check_chunk_overwrite(stripe, p))

    chunks_overwrite++;
  }


  SetChunkIo(chunk);
  continue;

prohibit_io:

  ClearChunkIo(chunk);
  chunks_prohibited++;

  atomic_inc(RS(stripe->sc)->stats + S_PROHIBITCHUNKIO);
 }


 if (chunks_overwrite == rs->set.data_devs)
  atomic_inc(rs->stats + S_OVERWRITE);
 else if (chunks_uptodate + chunks_prohibited < rs->set.raid_devs) {

  atomic_inc(rs->stats + S_CANT_MERGE);
  return -EPERM;
 }





 if (chunks_uptodate == rs->set.raid_devs ||
     chunks_overwrite == rs->set.data_devs) {
  stripe_zero_chunk(stripe, stripe->idx.parity);
  BUG_ON(StripeReconstruct(stripe));
  SetStripeReconstruct(stripe);
 } else {







  parity_xor(stripe);
 }





 atomic_inc(rs->stats + S_CAN_MERGE);
 return 0;
}
