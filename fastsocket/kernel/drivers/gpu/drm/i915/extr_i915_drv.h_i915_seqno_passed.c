
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef scalar_t__ int32_t ;



__attribute__((used)) static inline bool
i915_seqno_passed(uint32_t seq1, uint32_t seq2)
{
 return (int32_t)(seq1 - seq2) >= 0;
}
