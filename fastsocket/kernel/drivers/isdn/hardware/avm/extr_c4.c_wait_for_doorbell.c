
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ mbase; } ;
typedef TYPE_1__ avmcard ;


 scalar_t__ DOORBELL ;
 int c4inmeml (scalar_t__) ;
 unsigned long jiffies ;
 int mb () ;
 int time_before (unsigned long,unsigned long) ;

__attribute__((used)) static inline int wait_for_doorbell(avmcard *card, unsigned long t)
{
 unsigned long stop;

 stop = jiffies + t;
 while (c4inmeml(card->mbase+DOORBELL) != 0xffffffff) {
  if (!time_before(jiffies, stop))
   return -1;
  mb();
 }
 return 0;
}
