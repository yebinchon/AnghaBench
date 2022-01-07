
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vfp_single {int sign; int exponent; int significand; } ;
typedef int s32 ;


 int VFP_SINGLE_LOW_BITS ;
 int VFP_SINGLE_MANTISSA_BITS ;

__attribute__((used)) static inline s32 vfp_single_pack(struct vfp_single *s)
{
 u32 val;
 val = (s->sign << 16) +
       (s->exponent << VFP_SINGLE_MANTISSA_BITS) +
       (s->significand >> VFP_SINGLE_LOW_BITS);
 return (s32)val;
}
