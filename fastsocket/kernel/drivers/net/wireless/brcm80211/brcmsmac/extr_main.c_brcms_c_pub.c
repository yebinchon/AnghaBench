
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcms_pub {int dummy; } ;
struct brcms_c_info {struct brcms_pub* pub; } ;



struct brcms_pub *brcms_c_pub(struct brcms_c_info *wlc)
{
 return wlc->pub;
}
