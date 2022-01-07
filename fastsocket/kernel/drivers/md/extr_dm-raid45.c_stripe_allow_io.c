
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct stripe {int sc; } ;
struct TYPE_3__ {unsigned int raid_devs; } ;
struct TYPE_4__ {TYPE_1__ set; } ;


 int CHUNK (struct stripe*,unsigned int) ;
 TYPE_2__* RS (int ) ;
 int SetChunkIo (int ) ;

__attribute__((used)) static void stripe_allow_io(struct stripe *stripe)
{
 unsigned p = RS(stripe->sc)->set.raid_devs;

 while (p--)
  SetChunkIo(CHUNK(stripe, p));
}
