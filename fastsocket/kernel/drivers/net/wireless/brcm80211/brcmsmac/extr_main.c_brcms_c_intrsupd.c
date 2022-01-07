
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct brcms_c_info {int macintstatus; } ;


 int wlc_intstatus (struct brcms_c_info*,int) ;

bool brcms_c_intrsupd(struct brcms_c_info *wlc)
{
 u32 macintstatus;


 macintstatus = wlc_intstatus(wlc, 0);


 if (macintstatus == 0xffffffff)
  return 0;


 wlc->macintstatus |= macintstatus;

 return 1;
}
