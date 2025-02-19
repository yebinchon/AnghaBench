
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;


 int* mask_72_64 ;
 int* parity ;

__attribute__((used)) static uint8_t dc_ecc(uint64_t dword)
{
 uint64_t t;
 uint32_t w;
 uint8_t p;
 int i;

 p = 0;
 for (i = 7; i >= 0; i--)
 {
  p <<= 1;
  t = dword & mask_72_64[i];
  w = (uint32_t)(t >> 32);
  p ^= (parity[w>>24] ^ parity[(w>>16) & 0xFF]
        ^ parity[(w>>8) & 0xFF] ^ parity[w & 0xFF]);
  w = (uint32_t)(t & 0xFFFFFFFF);
  p ^= (parity[w>>24] ^ parity[(w>>16) & 0xFF]
        ^ parity[(w>>8) & 0xFF] ^ parity[w & 0xFF]);
 }
 return p;
}
