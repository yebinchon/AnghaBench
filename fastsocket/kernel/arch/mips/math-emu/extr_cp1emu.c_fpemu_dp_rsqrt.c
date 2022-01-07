
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ieee754dp ;


 int ieee754dp_div (int ,int ) ;
 int ieee754dp_one (int ) ;
 int ieee754dp_sqrt (int ) ;

__attribute__((used)) static ieee754dp fpemu_dp_rsqrt(ieee754dp d)
{
 return ieee754dp_div(ieee754dp_one(0), ieee754dp_sqrt(d));
}
