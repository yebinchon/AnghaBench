
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int size; } ;
struct stripe {TYPE_1__ io; int sc; } ;
struct TYPE_5__ {unsigned int raid_devs; } ;
struct TYPE_6__ {TYPE_2__ set; } ;


 int CHUNK (struct stripe*,unsigned int) ;
 TYPE_3__* RS (int ) ;
 int SetChunkUptodate (int ) ;
 int XOR_SPEED_TICKS ;
 int common_xor (struct stripe*,int ,int ,int ) ;
 unsigned long jiffies ;
 int mb () ;

__attribute__((used)) static unsigned xor_speed(struct stripe *stripe)
{
 int ticks = XOR_SPEED_TICKS;
 unsigned p = RS(stripe->sc)->set.raid_devs, r = 0;
 unsigned long j;


 while (p--)
  SetChunkUptodate(CHUNK(stripe, p));


 for (j = jiffies; j == jiffies; );


 while (ticks--) {
  unsigned xors = 0;

  for (j = jiffies; j == jiffies; ) {
   mb();
   common_xor(stripe, stripe->io.size, 0, 0);
   mb();
   xors++;
   mb();
  }

  if (xors > r)
   r = xors;
 }

 return r;
}
