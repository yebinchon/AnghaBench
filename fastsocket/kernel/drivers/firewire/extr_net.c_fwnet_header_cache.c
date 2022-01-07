
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int addr_len; } ;
struct neighbour {int ha; struct net_device* dev; } ;
struct hh_cache {scalar_t__ hh_type; int hh_len; scalar_t__ hh_data; } ;
struct fwnet_header {scalar_t__ h_proto; int h_dest; } ;


 int ETH_P_802_3 ;
 int FWNET_HLEN ;
 scalar_t__ cpu_to_be16 (int ) ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static int fwnet_header_cache(const struct neighbour *neigh,
         struct hh_cache *hh)
{
 struct net_device *net;
 struct fwnet_header *h;

 if (hh->hh_type == cpu_to_be16(ETH_P_802_3))
  return -1;
 net = neigh->dev;
 h = (struct fwnet_header *)((u8 *)hh->hh_data + 16 - sizeof(*h));
 h->h_proto = hh->hh_type;
 memcpy(h->h_dest, neigh->ha, net->addr_len);
 hh->hh_len = FWNET_HLEN;

 return 0;
}
