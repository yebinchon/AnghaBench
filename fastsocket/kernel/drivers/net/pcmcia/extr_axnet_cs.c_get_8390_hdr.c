
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {unsigned int base_addr; } ;
struct e8390_pkt_hdr {int count; } ;


 scalar_t__ AXNET_CMD ;
 scalar_t__ AXNET_DATAPORT ;
 int E8390_RREAD ;
 int E8390_START ;
 scalar_t__ EN0_RSARHI ;
 scalar_t__ EN0_RSARLO ;
 int insw (scalar_t__,struct e8390_pkt_hdr*,int) ;
 int le16_to_cpu (int ) ;
 int outb_p (int,scalar_t__) ;

__attribute__((used)) static void get_8390_hdr(struct net_device *dev,
    struct e8390_pkt_hdr *hdr,
    int ring_page)
{
    unsigned int nic_base = dev->base_addr;

    outb_p(0, nic_base + EN0_RSARLO);
    outb_p(ring_page, nic_base + EN0_RSARHI);
    outb_p(E8390_RREAD+E8390_START, nic_base + AXNET_CMD);

    insw(nic_base + AXNET_DATAPORT, hdr,
     sizeof(struct e8390_pkt_hdr)>>1);

    hdr->count = le16_to_cpu(hdr->count);

}
