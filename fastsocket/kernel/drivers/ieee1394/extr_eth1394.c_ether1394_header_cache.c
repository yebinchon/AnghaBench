
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int addr_len; } ;
struct neighbour {int ha; struct net_device* dev; } ;
struct hh_cache {scalar_t__ hh_type; int hh_len; scalar_t__ hh_data; } ;
struct eth1394hdr {int h_dest; scalar_t__ h_proto; } ;
typedef scalar_t__ __be16 ;


 int ETH1394_HLEN ;
 int ETH_P_802_3 ;
 scalar_t__ htons (int ) ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static int ether1394_header_cache(const struct neighbour *neigh,
      struct hh_cache *hh)
{
 __be16 type = hh->hh_type;
 struct net_device *dev = neigh->dev;
 struct eth1394hdr *eth =
  (struct eth1394hdr *)((u8 *)hh->hh_data + 16 - ETH1394_HLEN);

 if (type == htons(ETH_P_802_3))
  return -1;

 eth->h_proto = type;
 memcpy(eth->h_dest, neigh->ha, dev->addr_len);

 hh->hh_len = ETH1394_HLEN;
 return 0;
}
