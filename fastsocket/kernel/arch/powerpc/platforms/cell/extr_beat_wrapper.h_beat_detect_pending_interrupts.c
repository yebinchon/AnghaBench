
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int s64 ;


 int HV_detect_pending_interrupts ;
 int beat_hcall4 (int ,int *,int ) ;

__attribute__((used)) static inline s64 beat_detect_pending_interrupts(u64 index, u64 *retbuf)
{
 return beat_hcall4(HV_detect_pending_interrupts, retbuf, index);
}
