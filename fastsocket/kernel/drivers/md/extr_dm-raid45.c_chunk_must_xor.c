
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stripe_chunk {int stripe; } ;


 int BL_CHUNK (struct stripe_chunk*,int ) ;
 int BUG_ON (int) ;
 scalar_t__ ChunkUptodate (struct stripe_chunk*) ;
 scalar_t__ StripeReconstruct (int ) ;
 scalar_t__ StripeRecover (int ) ;
 int WRITE_MERGED ;
 int WRITE_QUEUED ;
 int bio_list_empty (int ) ;

__attribute__((used)) static inline int chunk_must_xor(struct stripe_chunk *chunk)
{
 if (ChunkUptodate(chunk)) {
  BUG_ON(!bio_list_empty(BL_CHUNK(chunk, WRITE_QUEUED)) &&
         !bio_list_empty(BL_CHUNK(chunk, WRITE_MERGED)));

  if (!bio_list_empty(BL_CHUNK(chunk, WRITE_QUEUED)) ||
      !bio_list_empty(BL_CHUNK(chunk, WRITE_MERGED)))
   return 1;

  if (StripeReconstruct(chunk->stripe) ||
      StripeRecover(chunk->stripe))
   return 1;
 }

 return 0;
}
