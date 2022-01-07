
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stripe {int sc; } ;
struct TYPE_2__ {unsigned int raid_devs; } ;
struct raid_set {scalar_t__ dev; TYPE_1__ set; } ;


 int CHUNK (struct stripe*,unsigned int) ;
 int DevFailed (scalar_t__) ;
 struct raid_set* RS (int ) ;
 scalar_t__ chunk_io (int ) ;

__attribute__((used)) static unsigned for_each_io_dev(struct stripe *stripe,
           void (*f_io)(struct stripe *stripe, unsigned p))
{
 struct raid_set *rs = RS(stripe->sc);
 unsigned p, r = 0;

 for (p = 0; p < rs->set.raid_devs; p++) {
  if (chunk_io(CHUNK(stripe, p)) && !DevFailed(rs->dev + p)) {
   f_io(stripe, p);
   r++;
  }
 }

 return r;
}
