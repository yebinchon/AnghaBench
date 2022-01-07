
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct airq_t {int drv_data; int (* handler ) (scalar_t__*,int ) ;} ;
struct TYPE_2__ {unsigned long* word; scalar_t__* byte; } ;


 unsigned long INDICATOR_MASK ;
 int NR_AIRQS_PER_WORD ;
 int NR_AIRQ_WORDS ;
 struct airq_t*** airqs ;
 int barrier () ;
 TYPE_1__* indicators ;
 scalar_t__ likely (struct airq_t*) ;
 int stub1 (scalar_t__*,int ) ;

void do_adapter_IO(u8 isc)
{
 int w;
 int i;
 unsigned long word;
 struct airq_t *airq;





 for (w = 0; w < NR_AIRQ_WORDS; w++) {
  word = indicators[isc].word[w];
  i = w * NR_AIRQS_PER_WORD;



  while (word) {
   if (word & INDICATOR_MASK) {
    airq = airqs[isc][i];

    barrier();
    if (likely(airq))
     airq->handler(&indicators[isc].byte[i],
            airq->drv_data);
    else



     indicators[isc].byte[i] = 0;
   }
   word <<= 8;
   i++;
  }
 }
}
