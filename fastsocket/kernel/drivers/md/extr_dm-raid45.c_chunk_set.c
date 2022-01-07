
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stripe_chunk {int stripe; } ;
typedef enum chunk_dirty_type { ____Placeholder_chunk_dirty_type } chunk_dirty_type ;


 int BUG () ;

 int ClearChunkDirty (struct stripe_chunk*) ;
 int ClearChunkError (struct stripe_chunk*) ;


 int SetChunkDirty (struct stripe_chunk*) ;
 int SetChunkError (struct stripe_chunk*) ;
 int SetChunkIo (struct stripe_chunk*) ;
 int SetChunkUptodate (struct stripe_chunk*) ;
 int SetStripeError (int ) ;

__attribute__((used)) static void chunk_set(struct stripe_chunk *chunk, enum chunk_dirty_type type)
{
 switch (type) {
 case 130:
  ClearChunkDirty(chunk);
  break;
 case 129:
  SetChunkDirty(chunk);
  break;
 case 128:
  SetChunkError(chunk);
  SetStripeError(chunk->stripe);
  return;
 default:
  BUG();
 }

 SetChunkUptodate(chunk);
 SetChunkIo(chunk);
 ClearChunkError(chunk);
}
