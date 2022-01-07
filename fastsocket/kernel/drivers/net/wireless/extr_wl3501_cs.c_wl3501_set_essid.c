
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int length; scalar_t__ flags; } ;
union iwreq_data {TYPE_1__ data; } ;
struct TYPE_4__ {int el; } ;
struct wl3501_card {TYPE_2__ essid; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;


 int IW_MGMT_INFO_ELEMENT_SSID ;
 int iw_set_mgmt_info_element (int ,int *,char*,int) ;
 struct wl3501_card* netdev_priv (struct net_device*) ;
 int wl3501_reset (struct net_device*) ;

__attribute__((used)) static int wl3501_set_essid(struct net_device *dev,
       struct iw_request_info *info,
       union iwreq_data *wrqu, char *extra)
{
 struct wl3501_card *this = netdev_priv(dev);

 if (wrqu->data.flags) {
  iw_set_mgmt_info_element(IW_MGMT_INFO_ELEMENT_SSID,
      &this->essid.el,
      extra, wrqu->data.length);
 } else {
  iw_set_mgmt_info_element(IW_MGMT_INFO_ELEMENT_SSID,
      &this->essid.el, "ANY", 3);
 }
 return wl3501_reset(dev);
}
