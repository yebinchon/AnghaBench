
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stripe {int dummy; } ;


 int BUG_ON (int ) ;
 int CHUNK (struct stripe*,int) ;
 int ClearChunkIo (int ) ;
 int stripe_allow_io (struct stripe*) ;
 int stripe_chunks_invalidate (struct stripe*) ;
 int stripe_chunks_rw (struct stripe*) ;
 int stripe_io_ref (struct stripe*) ;

__attribute__((used)) static int stripe_recover_read(struct stripe *stripe, int pi)
{
 BUG_ON(stripe_io_ref(stripe));


 stripe_chunks_invalidate(stripe);
 stripe_allow_io(stripe);
 if (pi > -1)
  ClearChunkIo(CHUNK(stripe, pi));

 return stripe_chunks_rw(stripe);
}
