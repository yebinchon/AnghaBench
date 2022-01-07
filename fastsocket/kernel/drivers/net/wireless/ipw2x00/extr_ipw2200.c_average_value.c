
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct average {int pos; int sum; int init; } ;
typedef int s16 ;


 int AVG_ENTRIES ;
 int unlikely (int ) ;

__attribute__((used)) static s16 average_value(struct average *avg)
{
 if (!unlikely(avg->init)) {
  if (avg->pos)
   return avg->sum / avg->pos;
  return 0;
 }

 return avg->sum / AVG_ENTRIES;
}
