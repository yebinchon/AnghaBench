
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static inline u8 pca955x_ledsel(u8 oldval, int led_num, int state)
{
 return (oldval & (~(0x3 << (led_num << 1)))) |
  ((state & 0x3) << (led_num << 1));
}
