
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct sk_buff {scalar_t__ len; scalar_t__ data; int vlan_tci; } ;
struct rndis_filter_packet {int dummy; } ;
struct net_device_context {int device_ctx; } ;
struct TYPE_12__ {int tx_dropped; int tx_packets; int tx_bytes; } ;
struct net_device {TYPE_4__ stats; } ;
struct hv_page_buffer {int dummy; } ;
struct TYPE_10__ {unsigned long send_completion_tid; struct hv_netvsc_packet* send_completion_ctx; int send_completion; } ;
struct TYPE_11__ {TYPE_2__ send; } ;
struct hv_netvsc_packet {unsigned int page_buf_cnt; TYPE_3__ completion; TYPE_1__* page_buf; scalar_t__ total_data_buflen; void* extension; int vlan_tci; } ;
struct TYPE_13__ {int page_offset; } ;
typedef TYPE_5__ skb_frag_t ;
struct TYPE_14__ {unsigned int nr_frags; TYPE_5__* frags; } ;
struct TYPE_9__ {unsigned long pfn; unsigned long offset; unsigned long len; } ;


 int EAGAIN ;
 int GFP_ATOMIC ;
 scalar_t__ NDIS_VLAN_PPI_SIZE ;
 int NETDEV_TX_BUSY ;
 int NETDEV_TX_OK ;
 unsigned long PAGE_SHIFT ;
 int PAGE_SIZE ;
 int dev_kfree_skb (struct sk_buff*) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int kfree (struct hv_netvsc_packet*) ;
 struct hv_netvsc_packet* kzalloc (scalar_t__,int ) ;
 int netdev_err (struct net_device*,char*) ;
 struct net_device_context* netdev_priv (struct net_device*) ;
 int netvsc_xmit_completion ;
 unsigned long page_to_pfn (int ) ;
 int rndis_filter_send (int ,struct hv_netvsc_packet*) ;
 int skb_frag_page (TYPE_5__ const*) ;
 unsigned long skb_frag_size (TYPE_5__ const*) ;
 unsigned long skb_headlen (struct sk_buff*) ;
 TYPE_6__* skb_shinfo (struct sk_buff*) ;
 unsigned long virt_to_phys (scalar_t__) ;

__attribute__((used)) static int netvsc_start_xmit(struct sk_buff *skb, struct net_device *net)
{
 struct net_device_context *net_device_ctx = netdev_priv(net);
 struct hv_netvsc_packet *packet;
 int ret;
 unsigned int i, num_pages, npg_data;


 npg_data = (((unsigned long)skb->data + skb_headlen(skb) - 1)
  >> PAGE_SHIFT) - ((unsigned long)skb->data >> PAGE_SHIFT) + 1;
 num_pages = skb_shinfo(skb)->nr_frags + npg_data + 2;


 packet = kzalloc(sizeof(struct hv_netvsc_packet) +
    (num_pages * sizeof(struct hv_page_buffer)) +
    sizeof(struct rndis_filter_packet) +
    NDIS_VLAN_PPI_SIZE, GFP_ATOMIC);
 if (!packet) {

  netdev_err(net, "unable to allocate hv_netvsc_packet\n");

  dev_kfree_skb(skb);
  net->stats.tx_dropped++;
  return NETDEV_TX_OK;
 }

 packet->vlan_tci = skb->vlan_tci;

 packet->extension = (void *)(unsigned long)packet +
    sizeof(struct hv_netvsc_packet) +
        (num_pages * sizeof(struct hv_page_buffer));


 packet->page_buf_cnt = num_pages - 1;


 packet->total_data_buflen = skb->len;


 packet->page_buf[1].pfn = virt_to_phys(skb->data) >> PAGE_SHIFT;
 packet->page_buf[1].offset
  = (unsigned long)skb->data & (PAGE_SIZE - 1);
 if (npg_data == 1)
  packet->page_buf[1].len = skb_headlen(skb);
 else
  packet->page_buf[1].len = PAGE_SIZE
   - packet->page_buf[1].offset;

 for (i = 2; i <= npg_data; i++) {
  packet->page_buf[i].pfn = virt_to_phys(skb->data
   + PAGE_SIZE * (i-1)) >> PAGE_SHIFT;
  packet->page_buf[i].offset = 0;
  packet->page_buf[i].len = PAGE_SIZE;
 }
 if (npg_data > 1)
  packet->page_buf[npg_data].len = (((unsigned long)skb->data
   + skb_headlen(skb) - 1) & (PAGE_SIZE - 1)) + 1;


 for (i = 0; i < skb_shinfo(skb)->nr_frags; i++) {
  const skb_frag_t *f = &skb_shinfo(skb)->frags[i];

  packet->page_buf[i+npg_data+1].pfn =
   page_to_pfn(skb_frag_page(f));
  packet->page_buf[i+npg_data+1].offset = f->page_offset;
  packet->page_buf[i+npg_data+1].len = skb_frag_size(f);
 }


 packet->completion.send.send_completion = netvsc_xmit_completion;
 packet->completion.send.send_completion_ctx = packet;
 packet->completion.send.send_completion_tid = (unsigned long)skb;

 ret = rndis_filter_send(net_device_ctx->device_ctx,
      packet);
 if (ret == 0) {
  net->stats.tx_bytes += skb->len;
  net->stats.tx_packets++;
 } else {
  kfree(packet);
  if (ret != -EAGAIN) {
   dev_kfree_skb_any(skb);
   net->stats.tx_dropped++;
  }
 }

 return (ret == -EAGAIN) ? NETDEV_TX_BUSY : NETDEV_TX_OK;
}
