
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct brcms_cm_info {int dummy; } ;


 int brcms_c_valid_chanspec_ext (struct brcms_cm_info*,int ) ;

bool brcms_c_valid_chanspec_db(struct brcms_cm_info *wlc_cm, u16 chspec)
{
 return brcms_c_valid_chanspec_ext(wlc_cm, chspec);
}
