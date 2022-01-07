
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int s64 ;


 int HV_set_dabr ;
 int beat_hcall_norets (int ,int ,int ) ;

__attribute__((used)) static inline s64 beat_set_dabr(u64 value, u64 style)
{
 return beat_hcall_norets(HV_set_dabr, value, style);
}
