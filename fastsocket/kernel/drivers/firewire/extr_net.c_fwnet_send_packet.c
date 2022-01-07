
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct rfc2734_header {int w1; int w0; } ;
struct TYPE_7__ {int w0; int w1; } ;
struct fwnet_packet_task {unsigned int max_payload; scalar_t__ dest_node; int generation; unsigned long long fifo_addr; int pt_link; TYPE_2__* skb; int speed; int transaction; TYPE_3__ hdr; struct fwnet_device* dev; } ;
struct fwnet_device {TYPE_1__* netdev; int lock; int sent_list; TYPE_4__* card; int broadcasted_list; } ;
struct TYPE_8__ {int generation; int node_id; } ;
struct TYPE_6__ {int data; } ;
struct TYPE_5__ {int trans_start; } ;


 int BUG () ;
 int IANA_SPECIFIER_ID ;
 scalar_t__ IEEE1394_ALL_NODES ;
 int IEEE1394_BROADCAST_CHANNEL ;
 int RFC2374_FRAG_HDR_SIZE ;




 int RFC2374_UNFRAG_HDR_SIZE ;
 int RFC2734_SW_VERSION ;
 int SCODE_100 ;
 int TCODE_STREAM_DATA ;
 int TCODE_WRITE_BLOCK_REQUEST ;
 int fw_send_request (TYPE_4__*,int *,int ,scalar_t__,int,int ,unsigned long long,int ,unsigned int,int ,struct fwnet_packet_task*) ;
 scalar_t__ fw_stream_packet_destination_id (int,int ,int ) ;
 int fwnet_get_hdr_lf (TYPE_3__*) ;
 int fwnet_write_complete ;
 int jiffies ;
 int list_add_tail (int *,int *) ;
 int put_unaligned_be32 (int,int *) ;
 int * skb_push (TYPE_2__*,int) ;
 int smp_rmb () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int fwnet_send_packet(struct fwnet_packet_task *ptask)
{
 struct fwnet_device *dev;
 unsigned tx_len;
 struct rfc2734_header *bufhdr;
 unsigned long flags;

 dev = ptask->dev;
 tx_len = ptask->max_payload;
 switch (fwnet_get_hdr_lf(&ptask->hdr)) {
 case 128:
  bufhdr = (struct rfc2734_header *)
    skb_push(ptask->skb, RFC2374_UNFRAG_HDR_SIZE);
  put_unaligned_be32(ptask->hdr.w0, &bufhdr->w0);
  break;

 case 131:
 case 130:
 case 129:
  bufhdr = (struct rfc2734_header *)
    skb_push(ptask->skb, RFC2374_FRAG_HDR_SIZE);
  put_unaligned_be32(ptask->hdr.w0, &bufhdr->w0);
  put_unaligned_be32(ptask->hdr.w1, &bufhdr->w1);
  break;

 default:
  BUG();
 }
 if (ptask->dest_node == IEEE1394_ALL_NODES) {
  u8 *p;
  int generation;
  int node_id;


  generation = dev->card->generation;
  smp_rmb();
  node_id = dev->card->node_id;

  p = skb_push(ptask->skb, 8);
  put_unaligned_be32(node_id << 16 | IANA_SPECIFIER_ID >> 8, p);
  put_unaligned_be32((IANA_SPECIFIER_ID & 0xff) << 24
      | RFC2734_SW_VERSION, &p[4]);


  fw_send_request(dev->card, &ptask->transaction,
    TCODE_STREAM_DATA,
    fw_stream_packet_destination_id(3,
      IEEE1394_BROADCAST_CHANNEL, 0),
    generation, SCODE_100, 0ULL, ptask->skb->data,
    tx_len + 8, fwnet_write_complete, ptask);


  spin_lock_irqsave(&dev->lock, flags);
  list_add_tail(&ptask->pt_link, &dev->broadcasted_list);
  spin_unlock_irqrestore(&dev->lock, flags);

  return 0;
 }

 fw_send_request(dev->card, &ptask->transaction,
   TCODE_WRITE_BLOCK_REQUEST, ptask->dest_node,
   ptask->generation, ptask->speed, ptask->fifo_addr,
   ptask->skb->data, tx_len, fwnet_write_complete, ptask);


 spin_lock_irqsave(&dev->lock, flags);
 list_add_tail(&ptask->pt_link, &dev->sent_list);
 spin_unlock_irqrestore(&dev->lock, flags);

 dev->netdev->trans_start = jiffies;

 return 0;
}
