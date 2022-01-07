
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u64 ;



__attribute__((used)) static inline void qlcnic_clear_cmddesc(u64 *desc)
{
 desc[0] = 0ULL;
 desc[2] = 0ULL;
 desc[7] = 0ULL;
}
