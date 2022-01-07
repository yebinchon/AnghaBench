
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int ind; int count; } ;


 int TIQDIO_NR_NONSHARED_IND ;
 size_t TIQDIO_SHARED_IND ;
 int atomic_inc (int *) ;
 int atomic_read (int *) ;
 int atomic_set (int *,int) ;
 TYPE_1__* q_indicators ;

__attribute__((used)) static u32 *get_indicator(void)
{
 int i;

 for (i = 0; i < TIQDIO_NR_NONSHARED_IND; i++)
  if (!atomic_read(&q_indicators[i].count)) {
   atomic_set(&q_indicators[i].count, 1);
   return &q_indicators[i].ind;
  }


 atomic_inc(&q_indicators[TIQDIO_SHARED_IND].count);
 return &q_indicators[TIQDIO_SHARED_IND].ind;
}
