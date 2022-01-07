
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int memcpy (int *,int *,int) ;

__attribute__((used)) static void wmi_swap_bytes(u8 *src, u8 *dest)
{
 int i;

 for (i = 0; i <= 3; i++)
  memcpy(dest + i, src + (3 - i), 1);

 for (i = 0; i <= 1; i++)
  memcpy(dest + 4 + i, src + (5 - i), 1);

 for (i = 0; i <= 1; i++)
  memcpy(dest + 6 + i, src + (7 - i), 1);

 memcpy(dest + 8, src + 8, 8);
}
