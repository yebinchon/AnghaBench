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
struct yam_port {int tx_state; int tx_count; int tx_len; unsigned char* tx_buf; int tx_crcl; int tx_crch; int bitrate; int txtail; int dupmode; int holdd; int /*<<< orphan*/  send_queue; } ;
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/ * data; } ;
struct TYPE_2__ {int /*<<< orphan*/  tx_packets; } ;
struct net_device {TYPE_1__ stats; int /*<<< orphan*/  base_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  TX_CRC1 133 
#define  TX_CRC2 132 
#define  TX_DATA 131 
#define  TX_HEAD 130 
#define  TX_OFF 129 
#define  TX_TAIL 128 
 int YAM_MAX_FRAME ; 
 unsigned char* chktabh ; 
 unsigned char* chktabl ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int,unsigned char*,int) ; 
 struct sk_buff* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct net_device *dev, struct yam_port *yp)
{
	struct sk_buff *skb;
	unsigned char b, temp;

	switch (yp->tx_state) {
	case TX_OFF:
		break;
	case TX_HEAD:
		if (--yp->tx_count <= 0) {
			if (!(skb = FUNC5(&yp->send_queue))) {
				FUNC3(dev);
				yp->tx_state = TX_OFF;
				break;
			}
			yp->tx_state = TX_DATA;
			if (skb->data[0] != 0) {
/*                              do_kiss_params(s, skb->data, skb->len); */
				FUNC1(skb);
				break;
			}
			yp->tx_len = skb->len - 1;	/* strip KISS byte */
			if (yp->tx_len >= YAM_MAX_FRAME || yp->tx_len < 2) {
        			FUNC1(skb);
				break;
			}
			FUNC4(skb, 1,
							 yp->tx_buf,
							 yp->tx_len);
			FUNC1(skb);
			yp->tx_count = 0;
			yp->tx_crcl = 0x21;
			yp->tx_crch = 0xf3;
			yp->tx_state = TX_DATA;
		}
		break;
	case TX_DATA:
		b = yp->tx_buf[yp->tx_count++];
		FUNC2(b, FUNC0(dev->base_addr));
		temp = yp->tx_crcl;
		yp->tx_crcl = chktabl[temp] ^ yp->tx_crch;
		yp->tx_crch = chktabh[temp] ^ b;
		if (yp->tx_count >= yp->tx_len) {
			yp->tx_state = TX_CRC1;
		}
		break;
	case TX_CRC1:
		yp->tx_crch = chktabl[yp->tx_crcl] ^ yp->tx_crch;
		yp->tx_crcl = chktabh[yp->tx_crcl] ^ chktabl[yp->tx_crch] ^ 0xff;
		FUNC2(yp->tx_crcl, FUNC0(dev->base_addr));
		yp->tx_state = TX_CRC2;
		break;
	case TX_CRC2:
		FUNC2(chktabh[yp->tx_crch] ^ 0xFF, FUNC0(dev->base_addr));
		if (FUNC6(&yp->send_queue)) {
			yp->tx_count = (yp->bitrate * yp->txtail) / 8000;
			if (yp->dupmode == 2)
				yp->tx_count += (yp->bitrate * yp->holdd) / 8;
			if (yp->tx_count == 0)
				yp->tx_count = 1;
			yp->tx_state = TX_TAIL;
		} else {
			yp->tx_count = 1;
			yp->tx_state = TX_HEAD;
		}
		++dev->stats.tx_packets;
		break;
	case TX_TAIL:
		if (--yp->tx_count <= 0) {
			yp->tx_state = TX_OFF;
			FUNC3(dev);
		}
		break;
	}
}