
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static int
bad_std_timing(u8 a, u8 b)
{
 return (a == 0x00 && b == 0x00) ||
        (a == 0x01 && b == 0x01) ||
        (a == 0x20 && b == 0x20);
}
