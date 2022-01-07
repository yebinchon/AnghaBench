
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct niu {int dummy; } ;


 int HOST_INFO_MACRDCTBLN ;
 int HOST_INFO_MPR ;
 int nr64_mac (unsigned long) ;
 int nw64_mac (unsigned long,int) ;

__attribute__((used)) static void __set_rdc_table_num_hw(struct niu *np, unsigned long reg,
       int num, int mac_pref)
{
 u64 val = nr64_mac(reg);
 val &= ~(HOST_INFO_MACRDCTBLN | HOST_INFO_MPR);
 val |= num;
 if (mac_pref)
  val |= HOST_INFO_MPR;
 nw64_mac(reg, val);
}
