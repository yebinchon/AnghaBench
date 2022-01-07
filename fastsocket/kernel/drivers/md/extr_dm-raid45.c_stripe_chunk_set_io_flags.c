
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct stripe_chunk {int dummy; } ;
struct TYPE_3__ {int recover; } ;
struct stripe {int sc; TYPE_1__ idx; } ;
struct TYPE_4__ {scalar_t__ stats; } ;


 struct stripe_chunk* CHUNK (struct stripe*,int) ;
 int EPERM ;
 TYPE_2__* RS (int ) ;
 scalar_t__ S_PROHIBITCHUNKIO ;
 int SetStripeReconstruct (struct stripe*) ;
 int atomic_inc (scalar_t__) ;
 int stripe_chunk_invalidate (struct stripe_chunk*) ;

__attribute__((used)) static int stripe_chunk_set_io_flags(struct stripe *stripe, int pr)
{
 struct stripe_chunk *chunk = CHUNK(stripe, pr);







 stripe_chunk_invalidate(chunk);
 stripe->idx.recover = pr;
 SetStripeReconstruct(stripe);


 atomic_inc(RS(stripe->sc)->stats + S_PROHIBITCHUNKIO);
 return -EPERM;
}
