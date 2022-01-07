
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;



__attribute__((used)) static inline u16 i5100_spddata_data(u16 a)
{
 return a & ((1 << 8) - 1);
}
