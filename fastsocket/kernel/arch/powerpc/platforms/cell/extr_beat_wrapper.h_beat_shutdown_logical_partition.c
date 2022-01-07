
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int HV_shutdown_logical_partition ;
 int beat_hcall_norets (int ,int ) ;

__attribute__((used)) static inline void beat_shutdown_logical_partition(u64 code)
{
 (void)beat_hcall_norets(HV_shutdown_logical_partition, code);
}
