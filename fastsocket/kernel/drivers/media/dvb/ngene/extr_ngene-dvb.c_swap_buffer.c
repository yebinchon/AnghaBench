
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ swab32 (scalar_t__) ;

__attribute__((used)) static void swap_buffer(u32 *p, u32 len)
{
 while (len) {
  *p = swab32(*p);
  p++;
  len -= 4;
 }
}
