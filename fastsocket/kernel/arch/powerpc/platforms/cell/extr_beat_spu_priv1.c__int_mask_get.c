
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct spu {int * shadow_int_mask_RW; } ;



__attribute__((used)) static inline u64 _int_mask_get(struct spu *spu, int class)
{
 return spu->shadow_int_mask_RW[class];
}
