#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct bzfifo {size_t f1; size_t f2; TYPE_2__* za; } ;
struct TYPE_4__ {struct bzfifo rxbz_b1; struct bzfifo rxbz_b2; } ;
union fifo_area {TYPE_1__ b_chans; } ;
typedef  int u_char ;
struct TYPE_6__ {int fifo_en; scalar_t__* last_bfifo_cnt; scalar_t__ fifos; } ;
struct hfc_pci {TYPE_3__ hw; } ;
struct TYPE_5__ {void* z1; void* z2; } ;

/* Variables and functions */
 scalar_t__ B_FIFO_SIZE ; 
 scalar_t__ B_SUB_VAL ; 
 int HFCPCI_FIFOEN_B1RX ; 
 int HFCPCI_FIFOEN_B2RX ; 
 int /*<<< orphan*/  HFCPCI_FIFO_EN ; 
 size_t MAX_B_FRAMES ; 
 int /*<<< orphan*/  FUNC0 (struct hfc_pci*,int /*<<< orphan*/ ,int) ; 
 void* FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (void*) ; 

__attribute__((used)) static void
FUNC3(struct hfc_pci *hc, int fifo)
{
	u_char		fifo_state;
	struct bzfifo	*bzr;

	if (fifo) {
		bzr = &((union fifo_area *)(hc->hw.fifos))->b_chans.rxbz_b2;
		fifo_state = hc->hw.fifo_en & HFCPCI_FIFOEN_B2RX;
	} else {
		bzr = &((union fifo_area *)(hc->hw.fifos))->b_chans.rxbz_b1;
		fifo_state = hc->hw.fifo_en & HFCPCI_FIFOEN_B1RX;
	}
	if (fifo_state)
		hc->hw.fifo_en ^= fifo_state;
	FUNC0(hc, HFCPCI_FIFO_EN, hc->hw.fifo_en);
	hc->hw.last_bfifo_cnt[fifo] = 0;
	bzr->f1 = MAX_B_FRAMES;
	bzr->f2 = bzr->f1;	/* init F pointers to remain constant */
	bzr->za[MAX_B_FRAMES].z1 = FUNC1(B_FIFO_SIZE + B_SUB_VAL - 1);
	bzr->za[MAX_B_FRAMES].z2 = FUNC1(
	    FUNC2(bzr->za[MAX_B_FRAMES].z1));
	if (fifo_state)
		hc->hw.fifo_en |= fifo_state;
	FUNC0(hc, HFCPCI_FIFO_EN, hc->hw.fifo_en);
}