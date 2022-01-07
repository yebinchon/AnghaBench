
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct sk_buff {int ip_summed; } ;
struct iphdr {int frag_off; unsigned int protocol; int tot_len; int ihl; int saddr; int daddr; } ;
struct ethhdr {scalar_t__ h_proto; } ;


 int CHECKSUM_UNNECESSARY ;
 int ETH_HLEN ;
 int ETH_P_IP ;
 unsigned int IPPROTO_TCP ;
 unsigned int IPPROTO_UDP ;
 int IP_MF ;
 int IP_OFFSET ;
 struct ethhdr* eth_hdr (struct sk_buff*) ;
 int htons (int) ;

__attribute__((used)) static void ioc3_tcpudp_checksum(struct sk_buff *skb, uint32_t hwsum, int len)
{
 struct ethhdr *eh = eth_hdr(skb);
 uint32_t csum, ehsum;
 unsigned int proto;
 struct iphdr *ih;
 uint16_t *ew;
 unsigned char *cp;
 if (eh->h_proto != htons(ETH_P_IP))
  return;

 ih = (struct iphdr *) ((char *)eh + ETH_HLEN);
 if (ih->frag_off & htons(IP_MF | IP_OFFSET))
  return;

 proto = ih->protocol;
 if (proto != IPPROTO_TCP && proto != IPPROTO_UDP)
  return;


 csum = hwsum +
        (ih->tot_len - (ih->ihl << 2)) +
        htons((uint16_t)ih->protocol) +
        (ih->saddr >> 16) + (ih->saddr & 0xffff) +
        (ih->daddr >> 16) + (ih->daddr & 0xffff);


 ew = (uint16_t *) eh;
 ehsum = ew[0] + ew[1] + ew[2] + ew[3] + ew[4] + ew[5] + ew[6];

 ehsum = (ehsum & 0xffff) + (ehsum >> 16);
 ehsum = (ehsum & 0xffff) + (ehsum >> 16);

 csum += 0xffff ^ ehsum;



 cp = (char *)eh + len;
 if (len & 1) {
  csum += 0xffff ^ (uint16_t) ((cp[1] << 8) | cp[0]);
  csum += 0xffff ^ (uint16_t) ((cp[3] << 8) | cp[2]);
 } else {
  csum += 0xffff ^ (uint16_t) ((cp[0] << 8) | cp[1]);
  csum += 0xffff ^ (uint16_t) ((cp[2] << 8) | cp[3]);
 }

 csum = (csum & 0xffff) + (csum >> 16);
 csum = (csum & 0xffff) + (csum >> 16);

 if (csum == 0xffff)
  skb->ip_summed = CHECKSUM_UNNECESSARY;
}
