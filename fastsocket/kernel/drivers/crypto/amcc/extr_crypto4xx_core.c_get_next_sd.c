
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ PPC4XX_LAST_SD ;

__attribute__((used)) static u32 get_next_sd(u32 current)
{
 if (current != PPC4XX_LAST_SD)
  return current + 1;
 else
  return 0;
}
