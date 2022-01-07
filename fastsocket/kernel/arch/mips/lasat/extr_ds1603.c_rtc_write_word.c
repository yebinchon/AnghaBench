
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rtc_write_databit (unsigned long) ;

__attribute__((used)) static void rtc_write_word(unsigned long word)
{
 int i;

 for (i = 0; i <= 31; i++) {
  rtc_write_databit(word & 1L);
  word >>= 1;
 }
}
