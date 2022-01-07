
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_shim_info {struct brcms_info* wl; struct brcms_c_info* wlc; struct brcms_hardware* wlc_hw; } ;
struct brcms_info {int dummy; } ;
struct brcms_hardware {int dummy; } ;
struct brcms_c_info {int dummy; } ;


 int GFP_ATOMIC ;
 struct phy_shim_info* kzalloc (int,int ) ;

struct phy_shim_info *wlc_phy_shim_attach(struct brcms_hardware *wlc_hw,
       struct brcms_info *wl,
       struct brcms_c_info *wlc) {
 struct phy_shim_info *physhim = ((void*)0);

 physhim = kzalloc(sizeof(struct phy_shim_info), GFP_ATOMIC);
 if (!physhim)
  return ((void*)0);

 physhim->wlc_hw = wlc_hw;
 physhim->wlc = wlc;
 physhim->wl = wl;

 return physhim;
}
