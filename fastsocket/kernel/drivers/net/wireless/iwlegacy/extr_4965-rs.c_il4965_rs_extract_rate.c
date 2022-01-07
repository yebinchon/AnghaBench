
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;



__attribute__((used)) static inline u8
il4965_rs_extract_rate(u32 rate_n_flags)
{
 return (u8) (rate_n_flags & 0xFF);
}
