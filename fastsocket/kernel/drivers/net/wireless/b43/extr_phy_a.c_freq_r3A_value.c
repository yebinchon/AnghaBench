
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;



__attribute__((used)) static inline u16 freq_r3A_value(u16 frequency)
{
 u16 value;

 if (frequency < 5091)
  value = 0x0040;
 else if (frequency < 5321)
  value = 0x0000;
 else if (frequency < 5806)
  value = 0x0080;
 else
  value = 0x0040;

 return value;
}
