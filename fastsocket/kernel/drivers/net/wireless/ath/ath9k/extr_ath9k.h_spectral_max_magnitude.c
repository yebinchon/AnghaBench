
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;



__attribute__((used)) static inline u16 spectral_max_magnitude(u8 *bins)
{
 return (bins[0] & 0xc0) >> 6 |
        (bins[1] & 0xff) << 2 |
        (bins[2] & 0x03) << 10;
}
