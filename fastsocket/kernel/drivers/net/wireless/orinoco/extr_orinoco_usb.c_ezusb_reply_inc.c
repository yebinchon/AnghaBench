
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static inline u8 ezusb_reply_inc(u8 count)
{
 if (count < 0x7F)
  return count + 1;
 else
  return 1;
}
