
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct brcms_phy {int dummy; } ;


 int read_radio_id (struct brcms_phy*) ;

__attribute__((used)) static u32 wlc_phy_get_radio_ver(struct brcms_phy *pi)
{
 u32 ver;

 ver = read_radio_id(pi);

 return ver;
}
