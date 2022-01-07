
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;



__attribute__((used)) static inline u8 fixed_en_pmi(u64 ctrl, int idx)
{
 return (ctrl >> (idx * 4)) & 0xf;
}
