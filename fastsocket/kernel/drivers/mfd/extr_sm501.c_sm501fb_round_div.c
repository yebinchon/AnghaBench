
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static long sm501fb_round_div(long num, long denom)
{

        return (2 * num + denom) / (2 * denom);
}
