
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vfp_single {int sign; int exponent; int significand; } ;
typedef int s32 ;


 int vfp_single_normaliseround (int,struct vfp_single*,int ,int ,char*) ;

__attribute__((used)) static u32 vfp_single_fsito(int sd, int unused, s32 m, u32 fpscr)
{
 struct vfp_single vs;

 vs.sign = (m & 0x80000000) >> 16;
 vs.exponent = 127 + 31 - 1;
 vs.significand = vs.sign ? -m : m;

 return vfp_single_normaliseround(sd, &vs, fpscr, 0, "fsito");
}
