
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sk_buff {int ip_summed; int protocol; struct net_device* dev; } ;
struct net_device {int name; struct claw_privbk* ml_priv; } ;
struct device {int dummy; } ;
struct clawph {int len; scalar_t__ link_num; scalar_t__ flag; } ;
struct clawctl {scalar_t__ command; } ;
struct TYPE_8__ {scalar_t__ rx_bytes; int rx_dropped; int rx_packets; int rx_frame_errors; } ;
struct claw_privbk {int mtc_logical_link; scalar_t__ mtc_offset; scalar_t__ p_mtc_envelope; struct ccwbk* p_read_active_first; TYPE_4__ stats; scalar_t__ mtc_skipping; struct claw_env* p_env; TYPE_2__* channel; } ;
struct claw_env {scalar_t__ packing; int read_size; } ;
struct TYPE_7__ {scalar_t__ flag; int opcode; int length; } ;
struct ccwbk {void* p_buffer; struct ccwbk* next; TYPE_3__ header; } ;
typedef int __u8 ;
typedef scalar_t__ __u32 ;
struct TYPE_6__ {TYPE_1__* cdev; } ;
struct TYPE_5__ {struct device dev; } ;


 int CHECKSUM_UNNECESSARY ;
 int CLAW_DBF_TEXT (int,int ,char*) ;
 int CLAW_DBF_TEXT_ (int,int ,char*,int) ;
 scalar_t__ CLAW_PENDING ;
 scalar_t__ CONNECTION_CONFIRM ;
 scalar_t__ CONNECTION_RESPONSE ;
 scalar_t__ DO_PACKED ;
 int ETH_P_IP ;
 int LOCK_YES ;
 scalar_t__ MAX_ENVELOPE_SIZE ;
 int MORE_to_COME_FLAG ;
 scalar_t__ PACK_SEND ;
 size_t READ ;
 int add_claw_reads (struct net_device*,struct ccwbk*,struct ccwbk*) ;
 int claw_process_control (struct net_device*,struct ccwbk*) ;
 int claw_strt_read (struct net_device*,int ) ;
 struct sk_buff* dev_alloc_skb (scalar_t__) ;
 int dev_info (struct device*,char*) ;
 int dev_warn (struct device*,char*,int ,int) ;
 int htons (int ) ;
 int memcpy (scalar_t__,void*,scalar_t__) ;
 int netif_rx (struct sk_buff*) ;
 scalar_t__ skb_put (struct sk_buff*,scalar_t__) ;
 int skb_reset_mac_header (struct sk_buff*) ;
 int trace ;

__attribute__((used)) static void
unpack_read(struct net_device *dev )
{
        struct sk_buff *skb;
        struct claw_privbk *privptr;
 struct claw_env *p_env;
        struct ccwbk *p_this_ccw;
        struct ccwbk *p_first_ccw;
        struct ccwbk *p_last_ccw;
 struct clawph *p_packh;
 void *p_packd;
 struct clawctl *p_ctlrec=((void*)0);
 struct device *p_dev;

        __u32 len_of_data;
 __u32 pack_off;
        __u8 link_num;
        __u8 mtc_this_frm=0;
        __u32 bytes_to_mov;
        int i=0;
 int p=0;

 CLAW_DBF_TEXT(4, trace, "unpkread");
        p_first_ccw=((void*)0);
        p_last_ccw=((void*)0);
 p_packh=((void*)0);
 p_packd=((void*)0);
 privptr = dev->ml_priv;

 p_dev = &privptr->channel[READ].cdev->dev;
 p_env = privptr->p_env;
        p_this_ccw=privptr->p_read_active_first;
 while (p_this_ccw!=((void*)0) && p_this_ccw->header.flag!=CLAW_PENDING) {
  pack_off = 0;
  p = 0;
  p_this_ccw->header.flag=CLAW_PENDING;
  privptr->p_read_active_first=p_this_ccw->next;
                p_this_ccw->next=((void*)0);
  p_packh = (struct clawph *)p_this_ccw->p_buffer;
  if ((p_env->packing == PACK_SEND) &&
      (p_packh->len == 32) &&
      (p_packh->link_num == 0)) {
   p_packh++;
   p_ctlrec = (struct clawctl *)p_packh;
   p_packh--;
   if ((p_ctlrec->command == CONNECTION_RESPONSE) ||
              (p_ctlrec->command == CONNECTION_CONFIRM))
    p_env->packing = DO_PACKED;
  }
  if (p_env->packing == DO_PACKED)
   link_num=p_packh->link_num;
  else
                 link_num=p_this_ccw->header.opcode / 8;
                if ((p_this_ccw->header.opcode & MORE_to_COME_FLAG)!=0) {
                        mtc_this_frm=1;
                        if (p_this_ccw->header.length!=
    privptr->p_env->read_size ) {
    dev_warn(p_dev,
     "The communication peer of %s"
     " sent a faulty"
     " frame of length %02x\n",
                                        dev->name, p_this_ccw->header.length);
                        }
                }

                if (privptr->mtc_skipping) {
                        if (mtc_this_frm==0) {
                                privptr->mtc_skipping=0;
                                privptr->mtc_logical_link=-1;
                        }
                        goto NextFrame;
                }

                if (link_num==0) {
                        claw_process_control(dev, p_this_ccw);
   CLAW_DBF_TEXT(4, trace, "UnpkCntl");
                        goto NextFrame;
                }
unpack_next:
  if (p_env->packing == DO_PACKED) {
   if (pack_off > p_env->read_size)
    goto NextFrame;
   p_packd = p_this_ccw->p_buffer+pack_off;
   p_packh = (struct clawph *) p_packd;
   if ((p_packh->len == 0) ||
       (p_packh->flag != 0))
    goto NextFrame;
   bytes_to_mov = p_packh->len;
   pack_off += bytes_to_mov+sizeof(struct clawph);
   p++;
  } else {
                 bytes_to_mov=p_this_ccw->header.length;
  }
                if (privptr->mtc_logical_link<0) {







                privptr->mtc_offset=0;
                        privptr->mtc_logical_link=link_num;
                }

                if (bytes_to_mov > (MAX_ENVELOPE_SIZE- privptr->mtc_offset) ) {

                        privptr->stats.rx_frame_errors++;
                        goto NextFrame;
                }
  if (p_env->packing == DO_PACKED) {
   memcpy( privptr->p_mtc_envelope+ privptr->mtc_offset,
    p_packd+sizeof(struct clawph), bytes_to_mov);

  } else {
                 memcpy( privptr->p_mtc_envelope+ privptr->mtc_offset,
                         p_this_ccw->p_buffer, bytes_to_mov);
  }
                if (mtc_this_frm==0) {
                        len_of_data=privptr->mtc_offset+bytes_to_mov;
                        skb=dev_alloc_skb(len_of_data);
                        if (skb) {
                                memcpy(skb_put(skb,len_of_data),
     privptr->p_mtc_envelope,
     len_of_data);
                                skb->dev=dev;
    skb_reset_mac_header(skb);
                                skb->protocol=htons(ETH_P_IP);
                                skb->ip_summed=CHECKSUM_UNNECESSARY;
                                privptr->stats.rx_packets++;
    privptr->stats.rx_bytes+=len_of_data;
                                netif_rx(skb);
                        }
                        else {
    dev_info(p_dev, "Allocating a buffer for"
     " incoming data failed\n");
                                privptr->stats.rx_dropped++;
                        }
                        privptr->mtc_offset=0;
                        privptr->mtc_logical_link=-1;
                }
                else {
                        privptr->mtc_offset+=bytes_to_mov;
                }
  if (p_env->packing == DO_PACKED)
   goto unpack_next;
NextFrame:




                i++;
                p_this_ccw->header.length=0xffff;
                p_this_ccw->header.opcode=0xff;



                if (p_first_ccw==((void*)0)) {
                        p_first_ccw = p_this_ccw;
                }
                else {
                        p_last_ccw->next = p_this_ccw;
                }
                p_last_ccw = p_this_ccw;



                p_this_ccw = privptr->p_read_active_first;
  CLAW_DBF_TEXT_(4, trace, "rxpkt %d", p);
        }



 CLAW_DBF_TEXT_(4, trace, "rxfrm %d", i);
        add_claw_reads(dev, p_first_ccw, p_last_ccw);
        claw_strt_read(dev, LOCK_YES);
        return;
}
