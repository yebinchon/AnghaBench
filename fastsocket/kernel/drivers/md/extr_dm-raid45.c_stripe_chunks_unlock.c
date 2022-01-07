
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct stripe_chunk {int dummy; } ;
struct stripe {int sc; } ;
struct TYPE_3__ {unsigned int raid_devs; } ;
struct TYPE_4__ {TYPE_1__ set; } ;


 struct stripe_chunk* CHUNK (struct stripe*,unsigned int) ;
 int ClearChunkLocked (struct stripe_chunk*) ;
 TYPE_2__* RS (int ) ;
 scalar_t__ TestClearChunkUnlock (struct stripe_chunk*) ;

__attribute__((used)) static void stripe_chunks_unlock(struct stripe *stripe)
{
 unsigned p = RS(stripe->sc)->set.raid_devs;
 struct stripe_chunk *chunk;

 while (p--) {
  chunk = CHUNK(stripe, p);

  if (TestClearChunkUnlock(chunk))
   ClearChunkLocked(chunk);
 }
}
