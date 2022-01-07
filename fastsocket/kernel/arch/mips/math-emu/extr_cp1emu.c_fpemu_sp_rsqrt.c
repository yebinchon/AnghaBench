
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ieee754sp ;


 int ieee754sp_div (int ,int ) ;
 int ieee754sp_one (int ) ;
 int ieee754sp_sqrt (int ) ;

__attribute__((used)) static ieee754sp fpemu_sp_rsqrt(ieee754sp s)
{
 return ieee754sp_div(ieee754sp_one(0), ieee754sp_sqrt(s));
}
