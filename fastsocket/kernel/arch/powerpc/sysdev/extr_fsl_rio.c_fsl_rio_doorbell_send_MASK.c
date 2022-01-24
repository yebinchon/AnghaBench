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
typedef  int u16 ;
struct rio_priv {TYPE_2__* msg_regs; int /*<<< orphan*/  dbell_win; TYPE_1__* dbell_atmu_regs; } ;
struct rio_mport {int phy_type; struct rio_priv* priv; } ;
struct TYPE_4__ {int /*<<< orphan*/  odmr; int /*<<< orphan*/  oddatr; int /*<<< orphan*/  oddpr; int /*<<< orphan*/  odretcr; } ;
struct TYPE_3__ {int /*<<< orphan*/  rowtar; } ;

/* Variables and functions */
#define  RIO_PHY_PARALLEL 129 
#define  RIO_PHY_SERIAL 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int,int) ; 

__attribute__((used)) static int FUNC3(struct rio_mport *mport,
				int index, u16 destid, u16 data)
{
	struct rio_priv *priv = mport->priv;
	FUNC2("fsl_doorbell_send: index %d destid %4.4x data %4.4x\n",
		 index, destid, data);
	switch (mport->phy_type) {
	case RIO_PHY_PARALLEL:
		FUNC1(&priv->dbell_atmu_regs->rowtar, destid << 22);
		FUNC0(priv->dbell_win, data);
		break;
	case RIO_PHY_SERIAL:
		/* In the serial version silicons, such as MPC8548, MPC8641,
		 * below operations is must be.
		 */
		FUNC1(&priv->msg_regs->odmr, 0x00000000);
		FUNC1(&priv->msg_regs->odretcr, 0x00000004);
		FUNC1(&priv->msg_regs->oddpr, destid << 16);
		FUNC1(&priv->msg_regs->oddatr, data);
		FUNC1(&priv->msg_regs->odmr, 0x00000001);
		break;
	}

	return 0;
}