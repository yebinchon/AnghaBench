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
typedef  int /*<<< orphan*/  u8 ;
struct mlx4_slave_event_eq {int prod; int /*<<< orphan*/  event_lock; struct mlx4_eqe* event_eqe; } ;
struct TYPE_5__ {int /*<<< orphan*/  slave_event_work; int /*<<< orphan*/  comm_wq; struct mlx4_slave_event_eq slave_eq; } ;
struct TYPE_6__ {TYPE_2__ master; } ;
struct mlx4_priv {TYPE_3__ mfunc; } ;
struct mlx4_eqe {int owner; int /*<<< orphan*/  slave_id; } ;
struct TYPE_4__ {scalar_t__ eqe_size; } ;
struct mlx4_dev {TYPE_1__ caps; } ;

/* Variables and functions */
 int SLAVE_EVENT_EQ_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct mlx4_eqe*,struct mlx4_eqe*,scalar_t__) ; 
 struct mlx4_priv* FUNC1 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx4_dev*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static void FUNC7(struct mlx4_dev *dev, u8 slave, struct mlx4_eqe *eqe)
{
	struct mlx4_priv *priv = FUNC1(dev);
	struct mlx4_slave_event_eq *slave_eq = &priv->mfunc.master.slave_eq;
	struct mlx4_eqe *s_eqe;
	unsigned long flags;

	FUNC4(&slave_eq->event_lock, flags);
	s_eqe = &slave_eq->event_eqe[slave_eq->prod & (SLAVE_EVENT_EQ_SIZE - 1)];
	if ((!!(s_eqe->owner & 0x80)) ^
	    (!!(slave_eq->prod & SLAVE_EVENT_EQ_SIZE))) {
		FUNC2(dev, "Master failed to generate an EQE for slave: %d. "
			  "No free EQE on slave events queue\n", slave);
		FUNC5(&slave_eq->event_lock, flags);
		return;
	}

	FUNC0(s_eqe, eqe, dev->caps.eqe_size - 1);
	s_eqe->slave_id = slave;
	/* ensure all information is written before setting the ownersip bit */
	FUNC6();
	s_eqe->owner = !!(slave_eq->prod & SLAVE_EVENT_EQ_SIZE) ? 0x0 : 0x80;
	++slave_eq->prod;

	FUNC3(priv->mfunc.master.comm_wq,
		   &priv->mfunc.master.slave_event_work);
	FUNC5(&slave_eq->event_lock, flags);
}