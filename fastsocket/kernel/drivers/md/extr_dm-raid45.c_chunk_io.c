
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stripe_chunk {int dummy; } ;


 scalar_t__ ChunkDirty (struct stripe_chunk*) ;
 int ChunkIo (struct stripe_chunk*) ;
 scalar_t__ ChunkLocked (struct stripe_chunk*) ;
 int ChunkUptodate (struct stripe_chunk*) ;
 int SetChunkMustIo (struct stripe_chunk*) ;
 scalar_t__ TestClearChunkMustIo (struct stripe_chunk*) ;

__attribute__((used)) static int chunk_io(struct stripe_chunk *chunk)
{

 if (TestClearChunkMustIo(chunk))
  return 1;


 if (!ChunkIo(chunk) || ChunkLocked(chunk))
  return 0;

 if (!ChunkUptodate(chunk) || ChunkDirty(chunk)) {
  SetChunkMustIo(chunk);
  return 1;
 }

 return 0;
}
