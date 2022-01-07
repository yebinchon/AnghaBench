
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int s8 ;



__attribute__((used)) static int decode_temp(u8 twos_complement, u8 raw)
{
 return twos_complement ? (s8)raw : raw - 64;
}
