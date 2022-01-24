#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int /*<<< orphan*/  ip_summed; int /*<<< orphan*/  protocol; struct net_device* dev; } ;
struct net_device {int /*<<< orphan*/  name; struct claw_privbk* ml_priv; } ;
struct device {int dummy; } ;
struct clawph {int len; scalar_t__ link_num; scalar_t__ flag; } ;
struct clawctl {scalar_t__ command; } ;
struct TYPE_8__ {scalar_t__ rx_bytes; int /*<<< orphan*/  rx_dropped; int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  rx_frame_errors; } ;
struct claw_privbk {int mtc_logical_link; scalar_t__ mtc_offset; scalar_t__ p_mtc_envelope; struct ccwbk* p_read_active_first; TYPE_4__ stats; scalar_t__ mtc_skipping; struct claw_env* p_env; TYPE_2__* channel; } ;
struct claw_env {scalar_t__ packing; int read_size; } ;
struct TYPE_7__ {scalar_t__ flag; int opcode; int length; } ;
struct ccwbk {void* p_buffer; struct ccwbk* next; TYPE_3__ header; } ;
typedef  int __u8 ;
typedef  scalar_t__ __u32 ;
struct TYPE_6__ {TYPE_1__* cdev; } ;
struct TYPE_5__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECKSUM_UNNECESSARY ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ CLAW_PENDING ; 
 scalar_t__ CONNECTION_CONFIRM ; 
 scalar_t__ CONNECTION_RESPONSE ; 
 scalar_t__ DO_PACKED ; 
 int /*<<< orphan*/  ETH_P_IP ; 
 int /*<<< orphan*/  LOCK_YES ; 
 scalar_t__ MAX_ENVELOPE_SIZE ; 
 int MORE_to_COME_FLAG ; 
 scalar_t__ PACK_SEND ; 
 size_t READ ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,struct ccwbk*,struct ccwbk*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,struct ccwbk*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 
 scalar_t__ FUNC11 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*) ; 
 int /*<<< orphan*/  trace ; 

__attribute__((used)) static void
FUNC13(struct net_device *dev )
{
        struct sk_buff *skb;
        struct claw_privbk *privptr;
	struct claw_env    *p_env;
        struct ccwbk 	*p_this_ccw;
        struct ccwbk 	*p_first_ccw;
        struct ccwbk 	*p_last_ccw;
	struct clawph 	*p_packh;
	void		*p_packd;
	struct clawctl 	*p_ctlrec=NULL;
	struct device	*p_dev;

        __u32	len_of_data;
	__u32	pack_off;
        __u8	link_num;
        __u8 	mtc_this_frm=0;
        __u32	bytes_to_mov;
        int	i=0;
	int     p=0;

	FUNC0(4, trace, "unpkread");
        p_first_ccw=NULL;
        p_last_ccw=NULL;
	p_packh=NULL;
	p_packd=NULL;
	privptr = dev->ml_priv;

	p_dev = &privptr->channel[READ].cdev->dev;
	p_env = privptr->p_env;
        p_this_ccw=privptr->p_read_active_first;
	while (p_this_ccw!=NULL && p_this_ccw->header.flag!=CLAW_PENDING) {
		pack_off = 0;
		p = 0;
		p_this_ccw->header.flag=CLAW_PENDING;
		privptr->p_read_active_first=p_this_ccw->next;
                p_this_ccw->next=NULL;
		p_packh = (struct clawph *)p_this_ccw->p_buffer;
		if ((p_env->packing == PACK_SEND) &&
		    (p_packh->len == 32)           &&
		    (p_packh->link_num == 0)) {   /* is it a packed ctl rec? */
			p_packh++;  /* peek past pack header */
			p_ctlrec = (struct clawctl *)p_packh;
			p_packh--;  /* un peek */
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
				FUNC7(p_dev,
					"The communication peer of %s"
					" sent a faulty"
					" frame of length %02x\n",
                                        dev->name, p_this_ccw->header.length);
                        }
                }

                if (privptr->mtc_skipping) {
                        /*
                        *   We're in the mode of skipping past a
			*   multi-frame message
                        *   that we can't process for some reason or other.
                        *   The first frame without the More-To-Come flag is
			*   the last frame of the skipped message.
                        */
                        /*  in case of More-To-Come not set in this frame */
                        if (mtc_this_frm==0) {
                                privptr->mtc_skipping=0; /* Ok, the end */
                                privptr->mtc_logical_link=-1;
                        }
                        goto NextFrame;
                }

                if (link_num==0) {
                        FUNC3(dev, p_this_ccw);
			FUNC0(4, trace, "UnpkCntl");
                        goto NextFrame;
                }
unpack_next:
		if (p_env->packing == DO_PACKED) {
			if (pack_off > p_env->read_size)
				goto NextFrame;
			p_packd = p_this_ccw->p_buffer+pack_off;
			p_packh = (struct clawph *) p_packd;
			if ((p_packh->len == 0) || /* done with this frame? */
			    (p_packh->flag != 0))
				goto NextFrame;
			bytes_to_mov = p_packh->len;
			pack_off += bytes_to_mov+sizeof(struct clawph);
			p++;
		} else {
                	bytes_to_mov=p_this_ccw->header.length;
		}
                if (privptr->mtc_logical_link<0) {

                /*
                *  if More-To-Come is set in this frame then we don't know
                *  length of entire message, and hence have to allocate
		*  large buffer   */

                /*      We are starting a new envelope  */
                privptr->mtc_offset=0;
                        privptr->mtc_logical_link=link_num;
                }

                if (bytes_to_mov > (MAX_ENVELOPE_SIZE- privptr->mtc_offset) ) {
                        /*      error     */
                        privptr->stats.rx_frame_errors++;
                        goto NextFrame;
                }
		if (p_env->packing == DO_PACKED) {
			FUNC9( privptr->p_mtc_envelope+ privptr->mtc_offset,
				p_packd+sizeof(struct clawph), bytes_to_mov);

		} else	{
                	FUNC9( privptr->p_mtc_envelope+ privptr->mtc_offset,
                        	p_this_ccw->p_buffer, bytes_to_mov);
		}
                if (mtc_this_frm==0) {
                        len_of_data=privptr->mtc_offset+bytes_to_mov;
                        skb=FUNC5(len_of_data);
                        if (skb) {
                                FUNC9(FUNC11(skb,len_of_data),
					privptr->p_mtc_envelope,
					len_of_data);
                                skb->dev=dev;
				FUNC12(skb);
                                skb->protocol=FUNC8(ETH_P_IP);
                                skb->ip_summed=CHECKSUM_UNNECESSARY;
                                privptr->stats.rx_packets++;
				privptr->stats.rx_bytes+=len_of_data;
                                FUNC10(skb);
                        }
                        else {
				FUNC6(p_dev, "Allocating a buffer for"
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
                /*
                *   Remove ThisCCWblock from active read queue, and add it
                *   to queue of free blocks to be reused.
                */
                i++;
                p_this_ccw->header.length=0xffff;
                p_this_ccw->header.opcode=0xff;
                /*
                *       add this one to the free queue for later reuse
                */
                if (p_first_ccw==NULL) {
                        p_first_ccw = p_this_ccw;
                }
                else {
                        p_last_ccw->next = p_this_ccw;
                }
                p_last_ccw = p_this_ccw;
                /*
                *       chain to next block on active read queue
                */
                p_this_ccw = privptr->p_read_active_first;
		FUNC1(4, trace, "rxpkt %d", p);
        } /* end of while */

        /*      check validity                  */

	FUNC1(4, trace, "rxfrm %d", i);
        FUNC2(dev, p_first_ccw, p_last_ccw);
        FUNC4(dev, LOCK_YES);
        return;
}