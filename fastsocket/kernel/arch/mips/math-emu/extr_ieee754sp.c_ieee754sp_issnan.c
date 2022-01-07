
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ieee754sp ;


 int SPMANT (int ) ;
 int SP_MBIT (scalar_t__) ;
 scalar_t__ SP_MBITS ;
 int assert (int ) ;
 int ieee754sp_isnan (int ) ;

int ieee754sp_issnan(ieee754sp x)
{
 assert(ieee754sp_isnan(x));
 return (SPMANT(x) & SP_MBIT(SP_MBITS-1));
}
