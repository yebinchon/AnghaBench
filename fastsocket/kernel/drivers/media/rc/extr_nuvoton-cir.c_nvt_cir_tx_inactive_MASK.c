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
typedef  scalar_t__ u8 ;
struct TYPE_2__ {scalar_t__ tx_state; int /*<<< orphan*/  lock; } ;
struct nvt_dev {TYPE_1__ tx; } ;

/* Variables and functions */
 scalar_t__ ST_TX_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static bool FUNC2(struct nvt_dev *nvt)
{
	unsigned long flags;
	bool tx_inactive;
	u8 tx_state;

	FUNC0(&nvt->tx.lock, flags);
	tx_state = nvt->tx.tx_state;
	FUNC1(&nvt->tx.lock, flags);

	tx_inactive = (tx_state == ST_TX_NONE);

	return tx_inactive;
}