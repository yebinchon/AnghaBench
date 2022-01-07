
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpsb_packet {int type; int generation; struct hpsb_host* host; } ;
struct hpsb_host {int dummy; } ;


 int get_hpsb_generation (struct hpsb_host*) ;
 struct hpsb_packet* hpsb_alloc_packet (int ) ;
 int hpsb_async ;

__attribute__((used)) static struct hpsb_packet *ether1394_alloc_common_packet(struct hpsb_host *host)
{
 struct hpsb_packet *p;

 p = hpsb_alloc_packet(0);
 if (p) {
  p->host = host;
  p->generation = get_hpsb_generation(host);
  p->type = hpsb_async;
 }
 return p;
}
