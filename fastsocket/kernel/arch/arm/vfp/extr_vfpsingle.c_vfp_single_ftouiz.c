
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int s32 ;


 int FPSCR_ROUND_TOZERO ;
 int vfp_single_ftoui (int,int,int ,int ) ;

__attribute__((used)) static u32 vfp_single_ftouiz(int sd, int unused, s32 m, u32 fpscr)
{
 return vfp_single_ftoui(sd, unused, m, FPSCR_ROUND_TOZERO);
}
