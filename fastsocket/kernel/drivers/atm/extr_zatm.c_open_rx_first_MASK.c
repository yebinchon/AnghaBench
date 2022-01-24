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
struct zatm_vcc {unsigned short rx_chan; unsigned short pool; } ;
struct zatm_dev {int /*<<< orphan*/  lock; struct atm_vcc** rx_map; } ;
struct TYPE_3__ {scalar_t__ traffic_class; int max_sdu; } ;
struct TYPE_4__ {scalar_t__ aal; TYPE_1__ rxtp; } ;
struct atm_vcc {TYPE_2__ qos; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ ATM_AAL5 ; 
 scalar_t__ ATM_AAL5_TRAILER ; 
 int ATM_CELL_PAYLOAD ; 
 scalar_t__ ATM_NONE ; 
 int /*<<< orphan*/  CER ; 
 int /*<<< orphan*/  CMR ; 
 int FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned short,...) ; 
 int EAGAIN ; 
 int EMSGSIZE ; 
 unsigned short VC_SIZE ; 
 unsigned short ZATM_AAL0_POOL ; 
 struct zatm_dev* FUNC2 (int /*<<< orphan*/ ) ; 
 struct zatm_vcc* FUNC3 (struct atm_vcc*) ; 
 unsigned short FUNC4 (int) ; 
 unsigned short FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned short uPD98401_CHAN_ADDR ; 
 unsigned short uPD98401_CHAN_ADDR_SHIFT ; 
 int /*<<< orphan*/  uPD98401_OPEN_CHAN ; 
 int uPD98401_RXVC_AR ; 
 int uPD98401_RXVC_OD ; 
 int uPD98401_RXVC_POOL_SHIFT ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,unsigned short) ; 
 unsigned short FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct zatm_dev*,int,unsigned short) ; 
 int /*<<< orphan*/  zwait ; 

__attribute__((used)) static int FUNC12(struct atm_vcc *vcc)
{
	struct zatm_dev *zatm_dev;
	struct zatm_vcc *zatm_vcc;
	unsigned long flags;
	unsigned short chan;
	int cells;

	FUNC1("open_rx_first (0x%x)\n",FUNC4(0xc053));
	zatm_dev = FUNC2(vcc->dev);
	zatm_vcc = FUNC3(vcc);
	zatm_vcc->rx_chan = 0;
	if (vcc->qos.rxtp.traffic_class == ATM_NONE) return 0;
	if (vcc->qos.aal == ATM_AAL5) {
		if (vcc->qos.rxtp.max_sdu > 65464)
			vcc->qos.rxtp.max_sdu = 65464;
			/* fix this - we may want to receive 64kB SDUs
			   later */
		cells = FUNC0(vcc->qos.rxtp.max_sdu + ATM_AAL5_TRAILER,
				ATM_CELL_PAYLOAD);
		zatm_vcc->pool = FUNC5(cells*ATM_CELL_PAYLOAD);
	}
	else {
		cells = 1;
		zatm_vcc->pool = ZATM_AAL0_POOL;
	}
	if (zatm_vcc->pool < 0) return -EMSGSIZE;
	FUNC6(&zatm_dev->lock, flags);
	zwait;
	FUNC10(uPD98401_OPEN_CHAN,CMR);
	zwait;
	FUNC1("0x%x 0x%x\n",FUNC9(CMR),FUNC9(CER));
	chan = (FUNC9(CMR) & uPD98401_CHAN_ADDR) >> uPD98401_CHAN_ADDR_SHIFT;
	FUNC7(&zatm_dev->lock, flags);
	FUNC1("chan is %d\n",chan);
	if (!chan) return -EAGAIN;
	FUNC8(vcc->dev,zatm_vcc->pool);
	FUNC1("pool %d\n",zatm_vcc->pool);
	/* set up VC descriptor */
	FUNC6(&zatm_dev->lock, flags);
	FUNC11(zatm_dev,zatm_vcc->pool << uPD98401_RXVC_POOL_SHIFT,
	    chan*VC_SIZE/4);
	FUNC11(zatm_dev,uPD98401_RXVC_OD | (vcc->qos.aal == ATM_AAL5 ?
	    uPD98401_RXVC_AR : 0) | cells,chan*VC_SIZE/4+1);
	FUNC11(zatm_dev,0,chan*VC_SIZE/4+2);
	zatm_vcc->rx_chan = chan;
	zatm_dev->rx_map[chan] = vcc;
	FUNC7(&zatm_dev->lock, flags);
	return 0;
}