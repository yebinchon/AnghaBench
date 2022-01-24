#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct urb {int status; int actual_length; int transfer_buffer_length; struct kaweth_device* context; } ;
struct sk_buff {int /*<<< orphan*/  protocol; } ;
struct net_device {int /*<<< orphan*/  name; } ;
struct TYPE_2__ {int rx_bytes; int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  rx_errors; } ;
struct kaweth_device {int end; TYPE_1__ stats; scalar_t__ rx_buf; struct net_device* net; int /*<<< orphan*/  device_lock; int /*<<< orphan*/  status; int /*<<< orphan*/  term_wait; } ;
typedef  int __u16 ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int ECONNRESET ; 
 int EILSEQ ; 
 int EOVERFLOW ; 
 int EPIPE ; 
 int EPROTO ; 
 int EREMOTEIO ; 
 int ESHUTDOWN ; 
 int ETIME ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct sk_buff* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct kaweth_device*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC15(struct urb *urb)
{
	struct kaweth_device *kaweth = urb->context;
	struct net_device *net = kaweth->net;
	int status = urb->status;

	int count = urb->actual_length;
	int count2 = urb->transfer_buffer_length;

	__u16 pkt_len = FUNC6((__le16 *)kaweth->rx_buf);

	struct sk_buff *skb;

	if (FUNC13(status == -EPIPE)) {
		kaweth->stats.rx_errors++;
		kaweth->end = 1;
		FUNC14(&kaweth->term_wait);
		FUNC1("Status was -EPIPE.");
		return;
	}
	if (FUNC13(status == -ECONNRESET || status == -ESHUTDOWN)) {
		/* we are killed - set a flag and wake the disconnect handler */
		kaweth->end = 1;
		FUNC14(&kaweth->term_wait);
		FUNC1("Status was -ECONNRESET or -ESHUTDOWN.");
		return;
	}
	if (FUNC13(status == -EPROTO || status == -ETIME ||
		     status == -EILSEQ)) {
		kaweth->stats.rx_errors++;
		FUNC1("Status was -EPROTO, -ETIME, or -EILSEQ.");
		return;
	}
	if (FUNC13(status == -EOVERFLOW)) {
		kaweth->stats.rx_errors++;
		FUNC1("Status was -EOVERFLOW.");
	}
	FUNC11(&kaweth->device_lock);
	if (FUNC0(kaweth->status)) {
		FUNC12(&kaweth->device_lock);
		return;
	}
	FUNC12(&kaweth->device_lock);

	if(status && status != -EREMOTEIO && count != 1) {
		FUNC3("%s RX status: %d count: %d packet_len: %d",
                           net->name,
			   status,
			   count,
			   (int)pkt_len);
		FUNC5(kaweth, GFP_ATOMIC);
                return;
	}

	if(kaweth->net && (count > 2)) {
		if(pkt_len > (count - 2)) {
			FUNC3("Packet length too long for USB frame (pkt_len: %x, count: %x)",pkt_len, count);
			FUNC3("Packet len & 2047: %x", pkt_len & 2047);
			FUNC3("Count 2: %x", count2);
		        FUNC5(kaweth, GFP_ATOMIC);
                        return;
                }

		if(!(skb = FUNC2(pkt_len+2))) {
		        FUNC5(kaweth, GFP_ATOMIC);
                        return;
		}

		FUNC10(skb, 2);    /* Align IP on 16 byte boundaries */

		FUNC8(skb, kaweth->rx_buf + 2, pkt_len);

		FUNC9(skb, pkt_len);

		skb->protocol = FUNC4(skb, net);

		FUNC7(skb);

		kaweth->stats.rx_packets++;
		kaweth->stats.rx_bytes += pkt_len;
	}

	FUNC5(kaweth, GFP_ATOMIC);
}