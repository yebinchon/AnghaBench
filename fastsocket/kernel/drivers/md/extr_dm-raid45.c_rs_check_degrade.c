
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stripe {int sc; } ;
struct TYPE_2__ {unsigned int raid_devs; } ;
struct raid_set {TYPE_1__ set; } ;


 int CHUNK (struct stripe*,unsigned int) ;
 scalar_t__ ChunkError (int ) ;
 struct raid_set* RS (int ) ;
 int rs_check_degrade_dev (struct raid_set*,struct stripe*,unsigned int) ;

__attribute__((used)) static void rs_check_degrade(struct stripe *stripe)
{
 struct raid_set *rs = RS(stripe->sc);
 unsigned p = rs->set.raid_devs;

 while (p--) {
  if (ChunkError(CHUNK(stripe, p)))
   rs_check_degrade_dev(rs, stripe, p);
 }
}
