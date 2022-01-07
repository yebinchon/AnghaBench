
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int s64 ;


 int HV_put_iopte ;
 int beat_hcall_norets (int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static inline s64 beat_put_iopte(u64 ioas_id, u64 io_addr, u64 real_addr,
 u64 ioid, u64 flags)
{
 return beat_hcall_norets(HV_put_iopte, ioas_id, io_addr, real_addr,
  ioid, flags);
}
