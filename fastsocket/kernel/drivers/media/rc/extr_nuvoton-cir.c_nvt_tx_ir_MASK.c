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
typedef  int u8 ;
typedef  void* u32 ;
struct rc_dev {struct nvt_dev* priv; } ;
struct TYPE_2__ {size_t buf_count; scalar_t__ tx_state; int /*<<< orphan*/  lock; int /*<<< orphan*/  queue; scalar_t__ cur_buf_num; int /*<<< orphan*/  buf; } ;
struct nvt_dev {TYPE_1__ tx; } ;

/* Variables and functions */
 int /*<<< orphan*/  CIR_FIFOCON ; 
 int CIR_FIFOCON_RXFIFOCLR ; 
 int CIR_FIFOCON_TX_TRIGGER_LEV_8 ; 
 int /*<<< orphan*/  CIR_IREN ; 
 int CIR_IREN_TFU ; 
 int CIR_IREN_TTR ; 
 int /*<<< orphan*/  CIR_STXFIFO ; 
 scalar_t__ ST_TX_NONE ; 
 scalar_t__ ST_TX_REPLY ; 
 scalar_t__ ST_TX_REQUEST ; 
 void* TX_BUF_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int*,size_t) ; 
 int FUNC1 (struct nvt_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nvt_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct rc_dev *dev, int *txbuf, u32 n)
{
	struct nvt_dev *nvt = dev->priv;
	unsigned long flags;
	size_t cur_count;
	unsigned int i;
	u8 iren;
	int ret;

	FUNC3(&nvt->tx.lock, flags);

	if (n >= TX_BUF_LEN) {
		nvt->tx.buf_count = cur_count = TX_BUF_LEN;
		ret = TX_BUF_LEN;
	} else {
		nvt->tx.buf_count = cur_count = n;
		ret = n;
	}

	FUNC0(nvt->tx.buf, txbuf, nvt->tx.buf_count);

	nvt->tx.cur_buf_num = 0;

	/* save currently enabled interrupts */
	iren = FUNC1(nvt, CIR_IREN);

	/* now disable all interrupts, save TFU & TTR */
	FUNC2(nvt, CIR_IREN_TFU | CIR_IREN_TTR, CIR_IREN);

	nvt->tx.tx_state = ST_TX_REPLY;

	FUNC2(nvt, CIR_FIFOCON_TX_TRIGGER_LEV_8 |
			  CIR_FIFOCON_RXFIFOCLR, CIR_FIFOCON);

	/* trigger TTR interrupt by writing out ones, (yes, it's ugly) */
	for (i = 0; i < 9; i++)
		FUNC2(nvt, 0x01, CIR_STXFIFO);

	FUNC4(&nvt->tx.lock, flags);

	FUNC5(nvt->tx.queue, nvt->tx.tx_state == ST_TX_REQUEST);

	FUNC3(&nvt->tx.lock, flags);
	nvt->tx.tx_state = ST_TX_NONE;
	FUNC4(&nvt->tx.lock, flags);

	/* restore enabled interrupts to prior state */
	FUNC2(nvt, iren, CIR_IREN);

	return ret;
}