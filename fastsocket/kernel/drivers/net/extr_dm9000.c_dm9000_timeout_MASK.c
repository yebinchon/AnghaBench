#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct net_device {int /*<<< orphan*/  trans_start; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  io_addr; } ;
typedef  TYPE_1__ board_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  jiffies ; 
 TYPE_1__* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct net_device *dev)
{
	board_info_t *db = FUNC2(dev);
	u8 reg_save;
	unsigned long flags;

	/* Save previous register address */
	reg_save = FUNC5(db->io_addr);
	FUNC6(&db->lock, flags);

	FUNC3(dev);
	FUNC1(db);
	FUNC0(dev);
	/* We can accept TX packets again */
	dev->trans_start = jiffies;
	FUNC4(dev);

	/* Restore previous register address */
	FUNC8(reg_save, db->io_addr);
	FUNC7(&db->lock, flags);
}