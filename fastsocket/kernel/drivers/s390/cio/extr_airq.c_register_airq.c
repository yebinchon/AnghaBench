
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct airq_t {int dummy; } ;


 int ENOMEM ;
 int NR_AIRQS ;
 int ** airqs ;
 int cmpxchg (int *,int *,struct airq_t*) ;

__attribute__((used)) static int register_airq(struct airq_t *airq, u8 isc)
{
 int i;

 for (i = 0; i < NR_AIRQS; i++)
  if (!cmpxchg(&airqs[isc][i], ((void*)0), airq))
   return i;
 return -ENOMEM;
}
