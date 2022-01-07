
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int addr_len; } ;
struct hh_cache {scalar_t__ hh_data; } ;


 int FWNET_HLEN ;
 int memcpy (int *,unsigned char const*,int ) ;

__attribute__((used)) static void fwnet_header_cache_update(struct hh_cache *hh,
  const struct net_device *net, const unsigned char *haddr)
{
 memcpy((u8 *)hh->hh_data + 16 - FWNET_HLEN, haddr, net->addr_len);
}
