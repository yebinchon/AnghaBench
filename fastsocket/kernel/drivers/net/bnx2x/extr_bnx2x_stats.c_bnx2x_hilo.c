
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long u32 ;


 long HILO_U64 (long,long) ;

__attribute__((used)) static inline long bnx2x_hilo(u32 *hiref)
{
 u32 lo = *(hiref + 1);





 return lo;

}
