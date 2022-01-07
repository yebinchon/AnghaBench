
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static void lbs_unset_basic_rate_flags(u8 *rates, size_t len)
{
 int i;

 for (i = 0; i < len; i++)
  rates[i] &= 0x7f;
}
