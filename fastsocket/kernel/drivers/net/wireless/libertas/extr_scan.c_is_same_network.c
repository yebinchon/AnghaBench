
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bss_descriptor {scalar_t__ ssid_len; scalar_t__ channel; int ssid; int bssid; } ;


 int compare_ether_addr (int ,int ) ;
 int memcmp (int ,int ,scalar_t__) ;

__attribute__((used)) static inline int is_same_network(struct bss_descriptor *src,
      struct bss_descriptor *dst)
{



 return ((src->ssid_len == dst->ssid_len) &&
  (src->channel == dst->channel) &&
  !compare_ether_addr(src->bssid, dst->bssid) &&
  !memcmp(src->ssid, dst->ssid, src->ssid_len));
}
