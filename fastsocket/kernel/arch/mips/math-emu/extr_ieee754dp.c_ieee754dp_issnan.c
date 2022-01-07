
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ieee754dp ;


 int DPMANT (int ) ;
 int DP_MBIT (scalar_t__) ;
 scalar_t__ DP_MBITS ;
 int assert (int ) ;
 int ieee754dp_isnan (int ) ;

int ieee754dp_issnan(ieee754dp x)
{
 assert(ieee754dp_isnan(x));
 return ((DPMANT(x) & DP_MBIT(DP_MBITS-1)) == DP_MBIT(DP_MBITS-1));
}
