#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  queue; } ;
struct TYPE_10__ {TYPE_5__ rx_pool; } ;
struct vc_map {unsigned long index; scalar_t__ class; size_t scd_index; TYPE_7__* scq; scalar_t__ ntste; int /*<<< orphan*/  lock; TYPE_6__* estimator; int /*<<< orphan*/ * tx_vcc; int /*<<< orphan*/  flags; TYPE_2__ rcv; int /*<<< orphan*/ * rx_vcc; } ;
struct idt77252_dev {unsigned long rct_base; int /*<<< orphan*/  mutex; int /*<<< orphan*/ ** scd2vc; int /*<<< orphan*/  tst_free; int /*<<< orphan*/  name; int /*<<< orphan*/  cmd_lock; } ;
struct TYPE_11__ {scalar_t__ traffic_class; } ;
struct TYPE_9__ {scalar_t__ traffic_class; } ;
struct TYPE_12__ {TYPE_3__ txtp; TYPE_1__ rxtp; } ;
struct atm_vcc {int vci; TYPE_4__ qos; int /*<<< orphan*/  flags; int /*<<< orphan*/  vpi; struct vc_map* dev_data; struct atm_dev* dev; } ;
struct atm_dev {struct idt77252_dev* dev_data; } ;
struct TYPE_15__ {int /*<<< orphan*/  used; } ;
struct TYPE_14__ {int /*<<< orphan*/  timer; } ;

/* Variables and functions */
 scalar_t__ ATM_NONE ; 
 int /*<<< orphan*/  ATM_VF_READY ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ,int) ; 
 unsigned long SAR_CMD_CLOSE_CONNECTION ; 
 int /*<<< orphan*/  SAR_REG_CMD ; 
 int /*<<< orphan*/  SAR_REG_TCMDQ ; 
 unsigned long SAR_SRAM_RCT_SIZE ; 
 scalar_t__ SCHED_CBR ; 
 unsigned long TCMDQ_HALT ; 
 int /*<<< orphan*/  VCF_IDLE ; 
 int /*<<< orphan*/  VCF_RSV ; 
 int /*<<< orphan*/  VCF_RX ; 
 int /*<<< orphan*/  VCF_TX ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct idt77252_dev*,TYPE_7__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct idt77252_dev*,struct vc_map*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct idt77252_dev*,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*) ; 
 unsigned long FUNC9 (unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (struct idt77252_dev*,TYPE_5__*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC17 (struct idt77252_dev*) ; 
 int /*<<< orphan*/  FUNC18 (unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC19(struct atm_vcc *vcc)
{
	struct atm_dev *dev = vcc->dev;
	struct idt77252_dev *card = dev->dev_data;
	struct vc_map *vc = vcc->dev_data;
	unsigned long flags;
	unsigned long addr;
	unsigned long timeout;

	FUNC10(&card->mutex);

	FUNC1("%s: idt77252_close: vc = %d (%d.%d)\n",
		card->name, vc->index, vcc->vpi, vcc->vci);

	FUNC3(ATM_VF_READY, &vcc->flags);

	if (vcc->qos.rxtp.traffic_class != ATM_NONE) {

		FUNC15(&vc->lock, flags);
		FUNC3(VCF_RX, &vc->flags);
		vc->rx_vcc = NULL;
		FUNC16(&vc->lock, flags);

		if ((vcc->vci == 3) || (vcc->vci == 4))
			goto done;

		addr = card->rct_base + vc->index * SAR_SRAM_RCT_SIZE;

		FUNC15(&card->cmd_lock, flags);
		FUNC18(SAR_CMD_CLOSE_CONNECTION | (addr << 2), SAR_REG_CMD);
		FUNC17(card);
		FUNC16(&card->cmd_lock, flags);

		if (FUNC14(&vc->rcv.rx_pool.queue) != 0) {
			FUNC0("%s: closing a VC with pending rx buffers.\n",
				card->name);

			FUNC13(card, &vc->rcv.rx_pool);
		}
	}

done:
	if (vcc->qos.txtp.traffic_class != ATM_NONE) {

		FUNC15(&vc->lock, flags);
		FUNC3(VCF_TX, &vc->flags);
		FUNC3(VCF_IDLE, &vc->flags);
		FUNC3(VCF_RSV, &vc->flags);
		vc->tx_vcc = NULL;

		if (vc->estimator) {
			FUNC6(&vc->estimator->timer);
			FUNC8(vc->estimator);
			vc->estimator = NULL;
		}
		FUNC16(&vc->lock, flags);

		timeout = 5 * 1000;
		while (FUNC2(&vc->scq->used) > 0) {
			timeout = FUNC9(timeout);
			if (!timeout)
				break;
		}
		if (!timeout)
			FUNC12("%s: SCQ drain timeout: %u used\n",
			       card->name, FUNC2(&vc->scq->used));

		FUNC18(TCMDQ_HALT | vc->index, SAR_REG_TCMDQ);
		FUNC4(card, vc->scq, vc->class);

		if (vc->class == SCHED_CBR) {
			FUNC5(card, vc);
			card->tst_free += vc->ntste;
			vc->ntste = 0;
		}

		card->scd2vc[vc->scd_index] = NULL;
		FUNC7(card, vc->scq);
	}

	FUNC11(&card->mutex);
}