
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ SDCPWR_PWST0_REG ;
 int in_le32 (scalar_t__) ;
 scalar_t__ sdcpwr_mapbase ;

__attribute__((used)) static int get_cur_astate(int cpu)
{
 u32 ret;

 ret = in_le32(sdcpwr_mapbase + SDCPWR_PWST0_REG);
 ret = (ret >> (cpu * 4)) & 0x7;

 return ret;
}
