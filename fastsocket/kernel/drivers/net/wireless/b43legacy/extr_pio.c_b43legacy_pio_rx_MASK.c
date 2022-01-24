#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct sk_buff {int* data; } ;
struct b43legacy_rxhdr_fw3 {int /*<<< orphan*/  mac_status; } ;
struct b43legacy_pioqueue {scalar_t__ mmio_base; TYPE_1__* dev; } ;
struct b43legacy_hwtxstatus {int dummy; } ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_3__ {int /*<<< orphan*/  wl; } ;

/* Variables and functions */
 scalar_t__ B43legacy_MMIO_PIO1_BASE ; 
 scalar_t__ B43legacy_MMIO_PIO4_BASE ; 
 int /*<<< orphan*/  B43legacy_PIO_RXCTL ; 
 int B43legacy_PIO_RXCTL_DATAAVAILABLE ; 
 int B43legacy_PIO_RXCTL_READY ; 
 int /*<<< orphan*/  B43legacy_PIO_RXDATA ; 
 int B43legacy_RX_MAC_FCSERR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,struct b43legacy_hwtxstatus*) ; 
 int FUNC1 (struct b43legacy_pioqueue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct b43legacy_pioqueue*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,struct sk_buff*,struct b43legacy_rxhdr_fw3*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 struct sk_buff* FUNC6 (int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct b43legacy_pioqueue*,int,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 scalar_t__ FUNC11 (int) ; 

void FUNC12(struct b43legacy_pioqueue *queue)
{
	__le16 preamble[21] = { 0 };
	struct b43legacy_rxhdr_fw3 *rxhdr;
	u16 tmp;
	u16 len;
	u16 macstat;
	int i;
	int preamble_readwords;
	struct sk_buff *skb;

	tmp = FUNC1(queue, B43legacy_PIO_RXCTL);
	if (!(tmp & B43legacy_PIO_RXCTL_DATAAVAILABLE))
		return;
	FUNC2(queue, B43legacy_PIO_RXCTL,
			    B43legacy_PIO_RXCTL_DATAAVAILABLE);

	for (i = 0; i < 10; i++) {
		tmp = FUNC1(queue, B43legacy_PIO_RXCTL);
		if (tmp & B43legacy_PIO_RXCTL_READY)
			goto data_ready;
		FUNC10(10);
	}
	FUNC4(queue->dev->wl, "PIO RX timed out\n");
	return;
data_ready:

	len = FUNC1(queue, B43legacy_PIO_RXDATA);
	if (FUNC11(len > 0x700)) {
		FUNC8(queue, 0, "len > 0x700");
		return;
	}
	if (FUNC11(len == 0 && queue->mmio_base !=
		     B43legacy_MMIO_PIO4_BASE)) {
		FUNC8(queue, 0, "len == 0");
		return;
	}
	preamble[0] = FUNC5(len);
	if (queue->mmio_base == B43legacy_MMIO_PIO4_BASE)
		preamble_readwords = 14 / sizeof(u16);
	else
		preamble_readwords = 18 / sizeof(u16);
	for (i = 0; i < preamble_readwords; i++) {
		tmp = FUNC1(queue, B43legacy_PIO_RXDATA);
		preamble[i + 1] = FUNC5(tmp);
	}
	rxhdr = (struct b43legacy_rxhdr_fw3 *)preamble;
	macstat = FUNC7(rxhdr->mac_status);
	if (macstat & B43legacy_RX_MAC_FCSERR) {
		FUNC8(queue,
			     (queue->mmio_base == B43legacy_MMIO_PIO1_BASE),
			     "Frame FCS error");
		return;
	}
	if (queue->mmio_base == B43legacy_MMIO_PIO4_BASE) {
		/* We received an xmit status. */
		struct b43legacy_hwtxstatus *hw;

		hw = (struct b43legacy_hwtxstatus *)(preamble + 1);
		FUNC0(queue->dev, hw);

		return;
	}

	skb = FUNC6(len);
	if (FUNC11(!skb)) {
		FUNC8(queue, 1, "OOM");
		return;
	}
	FUNC9(skb, len);
	for (i = 0; i < len - 1; i += 2) {
		tmp = FUNC1(queue, B43legacy_PIO_RXDATA);
		*((__le16 *)(skb->data + i)) = FUNC5(tmp);
	}
	if (len % 2) {
		tmp = FUNC1(queue, B43legacy_PIO_RXDATA);
		skb->data[len - 1] = (tmp & 0x00FF);
	}
	FUNC3(queue->dev, skb, rxhdr);
}