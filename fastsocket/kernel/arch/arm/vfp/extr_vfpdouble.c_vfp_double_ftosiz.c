
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int FPSCR_ROUND_TOZERO ;
 int vfp_double_ftosi (int,int,int,int ) ;

__attribute__((used)) static u32 vfp_double_ftosiz(int dd, int unused, int dm, u32 fpscr)
{
 return vfp_double_ftosi(dd, unused, dm, FPSCR_ROUND_TOZERO);
}
