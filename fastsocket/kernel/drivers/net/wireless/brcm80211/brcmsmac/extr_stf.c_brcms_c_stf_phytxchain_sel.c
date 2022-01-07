
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct brcms_c_info {int dummy; } ;


 int _brcms_c_stf_phytxchain_sel (struct brcms_c_info*,int ) ;

u16 brcms_c_stf_phytxchain_sel(struct brcms_c_info *wlc, u32 rspec)
{
 return _brcms_c_stf_phytxchain_sel(wlc, rspec);
}
