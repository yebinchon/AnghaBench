
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpsb_packet {struct hpsb_host* host; } ;
struct hpsb_host {int dummy; } ;
typedef int quadlet_t ;


 int fill_phy_packet (struct hpsb_packet*,int ) ;
 struct hpsb_packet* hpsb_alloc_packet (int ) ;

struct hpsb_packet *hpsb_make_phypacket(struct hpsb_host *host, quadlet_t data)
{
 struct hpsb_packet *p;

 p = hpsb_alloc_packet(0);
 if (!p)
  return ((void*)0);

 p->host = host;
 fill_phy_packet(p, data);

 return p;
}
