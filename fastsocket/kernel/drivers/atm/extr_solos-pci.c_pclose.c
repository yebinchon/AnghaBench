
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct solos_card {TYPE_1__* dev; } ;
struct sk_buff {int dummy; } ;
struct pkt_hdr {void* type; void* vci; void* vpi; void* size; } ;
struct atm_vcc {int flags; TYPE_2__* dev; int vci; int vpi; } ;
struct TYPE_4__ {struct solos_card* dev_data; } ;
struct TYPE_3__ {int dev; } ;


 int ATM_VF_ADDR ;
 int ATM_VF_READY ;
 int GFP_ATOMIC ;
 int PKT_PCLOSE ;
 int SOLOS_CHAN (TYPE_2__*) ;
 struct sk_buff* alloc_skb (int,int ) ;
 int clear_bit (int ,int *) ;
 void* cpu_to_le16 (int ) ;
 int dev_warn (int *,char*) ;
 int fpga_queue (struct solos_card*,int ,struct sk_buff*,int *) ;
 scalar_t__ skb_put (struct sk_buff*,int) ;

__attribute__((used)) static void pclose(struct atm_vcc *vcc)
{
 struct solos_card *card = vcc->dev->dev_data;
 struct sk_buff *skb;
 struct pkt_hdr *header;

 skb = alloc_skb(sizeof(*header), GFP_ATOMIC);
 if (!skb) {
  dev_warn(&card->dev->dev, "Failed to allocate sk_buff in pclose()\n");
  return;
 }
 header = (void *)skb_put(skb, sizeof(*header));

 header->size = cpu_to_le16(0);
 header->vpi = cpu_to_le16(vcc->vpi);
 header->vci = cpu_to_le16(vcc->vci);
 header->type = cpu_to_le16(PKT_PCLOSE);

 fpga_queue(card, SOLOS_CHAN(vcc->dev), skb, ((void*)0));

 clear_bit(ATM_VF_ADDR, &vcc->flags);
 clear_bit(ATM_VF_READY, &vcc->flags);

 return;
}
