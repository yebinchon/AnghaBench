
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;


 int cached_clkin_hz ;

__attribute__((used)) static u_long get_clkin_hz(void)
{
 return cached_clkin_hz;
}
