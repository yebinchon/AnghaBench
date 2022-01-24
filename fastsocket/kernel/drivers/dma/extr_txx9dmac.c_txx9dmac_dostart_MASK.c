#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct txx9dmac_slave {int reg_width; scalar_t__ tx_reg; } ;
struct TYPE_3__ {int phys; int /*<<< orphan*/  cookie; } ;
struct txx9dmac_desc {TYPE_1__ txd; } ;
struct TYPE_4__ {struct txx9dmac_slave* private; } ;
struct txx9dmac_chan {int ccr; TYPE_2__ chan; } ;

/* Variables and functions */
 int /*<<< orphan*/  CCR ; 
 int /*<<< orphan*/  CHAR ; 
 int /*<<< orphan*/  CNTR ; 
 int /*<<< orphan*/  CSR ; 
 int /*<<< orphan*/  DAIR ; 
 int /*<<< orphan*/  SAIR ; 
 int TXX9_DMA_CSR_XFACT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (struct txx9dmac_chan*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct txx9dmac_chan*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct txx9dmac_chan*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct txx9dmac_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,struct txx9dmac_desc*) ; 
 scalar_t__ FUNC7 (struct txx9dmac_chan*) ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct txx9dmac_chan*) ; 

__attribute__((used)) static void FUNC10(struct txx9dmac_chan *dc,
			     struct txx9dmac_desc *first)
{
	struct txx9dmac_slave *ds = dc->chan.private;
	u32 sai, dai;

	FUNC6(FUNC0(&dc->chan), "dostart %u %p\n",
		 first->txd.cookie, first);
	/* ASSERT:  channel is idle */
	if (FUNC4(dc, CSR) & TXX9_DMA_CSR_XFACT) {
		FUNC5(FUNC0(&dc->chan),
			"BUG: Attempted to start non-idle channel\n");
		FUNC9(dc);
		/* The tasklet will hopefully advance the queue... */
		return;
	}

	if (FUNC7(dc)) {
		FUNC3(dc, CNTR, 0);
		FUNC3(dc, CSR, 0xffffffff);
		if (ds) {
			if (ds->tx_reg) {
				sai = ds->reg_width;
				dai = 0;
			} else {
				sai = 0;
				dai = ds->reg_width;
			}
		} else {
			sai = 8;
			dai = 8;
		}
		FUNC3(dc, SAIR, sai);
		FUNC3(dc, DAIR, dai);
		/* All 64-bit DMAC supports SMPCHN */
		FUNC3(dc, CCR, dc->ccr);
		/* Writing a non zero value to CHAR will assert XFACT */
		FUNC2(dc, first->txd.phys);
	} else {
		FUNC1(dc, CNTR, 0);
		FUNC1(dc, CSR, 0xffffffff);
		if (ds) {
			if (ds->tx_reg) {
				sai = ds->reg_width;
				dai = 0;
			} else {
				sai = 0;
				dai = ds->reg_width;
			}
		} else {
			sai = 4;
			dai = 4;
		}
		FUNC1(dc, SAIR, sai);
		FUNC1(dc, DAIR, dai);
		if (FUNC8()) {
			FUNC1(dc, CCR, dc->ccr);
			/* Writing a non zero value to CHAR will assert XFACT */
			FUNC1(dc, CHAR, first->txd.phys);
		} else {
			FUNC1(dc, CHAR, first->txd.phys);
			FUNC1(dc, CCR, dc->ccr);
		}
	}
}