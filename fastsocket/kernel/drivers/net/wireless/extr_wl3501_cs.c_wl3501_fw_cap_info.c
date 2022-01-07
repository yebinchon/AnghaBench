
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl3501_card {scalar_t__ net_type; } ;


 scalar_t__ IW_MODE_INFRA ;
 int WL3501_MGMT_CAPABILITY_ESS ;
 int WL3501_MGMT_CAPABILITY_IBSS ;

__attribute__((used)) static inline int wl3501_fw_cap_info(struct wl3501_card *this)
{
 return this->net_type == IW_MODE_INFRA ? WL3501_MGMT_CAPABILITY_ESS :
       WL3501_MGMT_CAPABILITY_IBSS;
}
