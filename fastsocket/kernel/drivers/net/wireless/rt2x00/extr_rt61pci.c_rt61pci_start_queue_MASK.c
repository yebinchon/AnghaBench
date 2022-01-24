#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct rt2x00_dev {int dummy; } ;
struct data_queue {int qid; struct rt2x00_dev* rt2x00dev; } ;

/* Variables and functions */
#define  QID_BEACON 129 
#define  QID_RX 128 
 int /*<<< orphan*/  TXRX_CSR0 ; 
 int /*<<< orphan*/  TXRX_CSR0_DISABLE_RX ; 
 int /*<<< orphan*/  TXRX_CSR9 ; 
 int /*<<< orphan*/  TXRX_CSR9_BEACON_GEN ; 
 int /*<<< orphan*/  TXRX_CSR9_TBTT_ENABLE ; 
 int /*<<< orphan*/  TXRX_CSR9_TSF_TICKING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct data_queue *queue)
{
	struct rt2x00_dev *rt2x00dev = queue->rt2x00dev;
	u32 reg;

	switch (queue->qid) {
	case QID_RX:
		FUNC1(rt2x00dev, TXRX_CSR0, &reg);
		FUNC0(&reg, TXRX_CSR0_DISABLE_RX, 0);
		FUNC2(rt2x00dev, TXRX_CSR0, reg);
		break;
	case QID_BEACON:
		FUNC1(rt2x00dev, TXRX_CSR9, &reg);
		FUNC0(&reg, TXRX_CSR9_TSF_TICKING, 1);
		FUNC0(&reg, TXRX_CSR9_TBTT_ENABLE, 1);
		FUNC0(&reg, TXRX_CSR9_BEACON_GEN, 1);
		FUNC2(rt2x00dev, TXRX_CSR9, reg);
		break;
	default:
		break;
	}
}