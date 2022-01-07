
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int at93c_read_databit () ;

__attribute__((used)) static u8 at93c_read_byte(void)
{
 int i;
 u8 data = 0;

 for (i = 0; i <= 7; i++) {
  data <<= 1;
  data |= at93c_read_databit();
 }
 return data;
}
