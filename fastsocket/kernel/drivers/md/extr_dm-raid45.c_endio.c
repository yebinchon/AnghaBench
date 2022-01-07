
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct stripe_chunk {TYPE_1__* stripe; } ;
struct TYPE_5__ {scalar_t__ stats; } ;
struct TYPE_4__ {int sc; } ;


 int CLEAN ;
 int ClearChunkLocked (struct stripe_chunk*) ;
 int ERROR ;
 TYPE_3__* RS (int ) ;
 scalar_t__ S_STRIPE_ERROR ;
 int SetChunkUnlock (struct stripe_chunk*) ;
 unsigned long StripeRecover (TYPE_1__*) ;
 int atomic_inc (scalar_t__) ;
 int chunk_set (struct stripe_chunk*,int ) ;
 int stripe_put_references (TYPE_1__*) ;
 scalar_t__ unlikely (unsigned long) ;

__attribute__((used)) static void endio(unsigned long error, void *context)
{
 struct stripe_chunk *chunk = context;

 if (unlikely(error)) {
  chunk_set(chunk, ERROR);

  atomic_inc(RS(chunk->stripe->sc)->stats + S_STRIPE_ERROR);
 } else
  chunk_set(chunk, CLEAN);





 if (unlikely(StripeRecover(chunk->stripe)))
  ClearChunkLocked(chunk);
 else
  SetChunkUnlock(chunk);


 stripe_put_references(chunk->stripe);
}
