
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;



u8 acpi_tb_checksum(u8 *buffer, u32 length)
{
 u8 sum = 0;
 u8 *end = buffer + length;

 while (buffer < end) {
  sum = (u8) (sum + *(buffer++));
 }

 return sum;
}
