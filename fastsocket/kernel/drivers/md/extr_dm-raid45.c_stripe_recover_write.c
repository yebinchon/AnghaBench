
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int size; } ;
struct stripe {TYPE_1__ io; } ;


 int BUG_ON (int ) ;
 int CHUNK (struct stripe*,int) ;
 int DIRTY ;
 int chunk_set (int ,int ) ;
 int common_xor (struct stripe*,int ,int ,int) ;
 int parity_xor (struct stripe*) ;
 int stripe_chunks_rw (struct stripe*) ;
 int stripe_io_ref (struct stripe*) ;
 int stripe_zero_chunk (struct stripe*,int) ;

__attribute__((used)) static int stripe_recover_write(struct stripe *stripe, int pi)
{
 BUG_ON(stripe_io_ref(stripe));





 if (pi > -1) {
  stripe_zero_chunk(stripe, pi);
  common_xor(stripe, stripe->io.size, 0, pi);
  chunk_set(CHUNK(stripe, pi), DIRTY);
 } else
  parity_xor(stripe);

 return stripe_chunks_rw(stripe);
}
