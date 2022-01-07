
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int size; } ;
struct TYPE_6__ {int recover; } ;
struct stripe {TYPE_1__ io; TYPE_3__ idx; int sc; } ;
struct TYPE_5__ {int raid_devs; } ;
struct raid_set {scalar_t__ stats; TYPE_2__ set; } ;


 int BUG_ON (int) ;
 int CHUNK (struct stripe*,int) ;
 int ChunkUptodate (int ) ;
 struct raid_set* RS (int ) ;
 scalar_t__ RSDegraded (struct raid_set*) ;
 scalar_t__ S_RECONSTRUCT_DEV ;
 scalar_t__ S_RECONSTRUCT_EI ;
 int atomic_inc (scalar_t__) ;
 int common_xor (struct stripe*,int ,int ,int) ;
 int stripe_zero_chunk (struct stripe*,int) ;

__attribute__((used)) static void stripe_reconstruct(struct stripe *stripe)
{
 struct raid_set *rs = RS(stripe->sc);
 int p = rs->set.raid_devs, pr = stripe->idx.recover;

 BUG_ON(pr < 0);


 while (p--)
  BUG_ON(p != pr && !ChunkUptodate(CHUNK(stripe, p)));


 atomic_inc(rs->stats + (RSDegraded(rs) ? S_RECONSTRUCT_EI :
       S_RECONSTRUCT_DEV));

 stripe_zero_chunk(stripe, pr);
 common_xor(stripe, stripe->io.size, 0, pr);
}
