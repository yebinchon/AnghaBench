
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct indicator_t {int dummy; } ;
struct TYPE_2__ {int count; } ;


 int atomic_dec (int *) ;
 TYPE_1__* q_indicators ;

__attribute__((used)) static void put_indicator(u32 *addr)
{
 int i;

 if (!addr)
  return;
 i = ((unsigned long)addr - (unsigned long)q_indicators) /
  sizeof(struct indicator_t);
 atomic_dec(&q_indicators[i].count);
}
