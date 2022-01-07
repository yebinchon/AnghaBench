
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int* ulp2_extra_len ;

__attribute__((used)) static inline unsigned int cxgbi_ulp_extra_len(int submode)
{
 return ulp2_extra_len[submode & 3];
}
