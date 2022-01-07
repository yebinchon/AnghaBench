
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int BITS_PER_BYTE ;

__attribute__((used)) static inline u32 clear_upper_bytes(u32 data, u32 n, u32 off)
{
 data >>= ((sizeof(u32) - n) * BITS_PER_BYTE);
 data <<= ((sizeof(u32) - n - off) * BITS_PER_BYTE);
 return data;
}
