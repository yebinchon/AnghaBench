
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libipw_network {scalar_t__ ssid_len; scalar_t__ channel; int ssid; int bssid; } ;


 scalar_t__ ether_addr_equal (int ,int ) ;
 int memcmp (int ,int ,scalar_t__) ;

__attribute__((used)) static inline int is_same_network(struct libipw_network *src,
      struct libipw_network *dst)
{



 return ((src->ssid_len == dst->ssid_len) &&
  (src->channel == dst->channel) &&
  ether_addr_equal(src->bssid, dst->bssid) &&
  !memcmp(src->ssid, dst->ssid, src->ssid_len));
}
