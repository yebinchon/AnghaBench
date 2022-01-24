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
#define  QID_AC_BE 131 
#define  QID_AC_BK 130 
#define  QID_AC_VI 129 
#define  QID_AC_VO 128 
 int /*<<< orphan*/  TX_CNTL_CSR ; 
 int /*<<< orphan*/  TX_CNTL_CSR_KICK_TX_AC0 ; 
 int /*<<< orphan*/  TX_CNTL_CSR_KICK_TX_AC1 ; 
 int /*<<< orphan*/  TX_CNTL_CSR_KICK_TX_AC2 ; 
 int /*<<< orphan*/  TX_CNTL_CSR_KICK_TX_AC3 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct data_queue *queue)
{
	struct rt2x00_dev *rt2x00dev = queue->rt2x00dev;
	u32 reg;

	switch (queue->qid) {
	case QID_AC_VO:
		FUNC1(rt2x00dev, TX_CNTL_CSR, &reg);
		FUNC0(&reg, TX_CNTL_CSR_KICK_TX_AC0, 1);
		FUNC2(rt2x00dev, TX_CNTL_CSR, reg);
		break;
	case QID_AC_VI:
		FUNC1(rt2x00dev, TX_CNTL_CSR, &reg);
		FUNC0(&reg, TX_CNTL_CSR_KICK_TX_AC1, 1);
		FUNC2(rt2x00dev, TX_CNTL_CSR, reg);
		break;
	case QID_AC_BE:
		FUNC1(rt2x00dev, TX_CNTL_CSR, &reg);
		FUNC0(&reg, TX_CNTL_CSR_KICK_TX_AC2, 1);
		FUNC2(rt2x00dev, TX_CNTL_CSR, reg);
		break;
	case QID_AC_BK:
		FUNC1(rt2x00dev, TX_CNTL_CSR, &reg);
		FUNC0(&reg, TX_CNTL_CSR_KICK_TX_AC3, 1);
		FUNC2(rt2x00dev, TX_CNTL_CSR, reg);
		break;
	default:
		break;
	}
}