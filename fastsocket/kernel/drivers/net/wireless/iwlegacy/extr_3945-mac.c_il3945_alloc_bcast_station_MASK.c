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
typedef  size_t u8 ;
struct il_priv {int /*<<< orphan*/  sta_lock; TYPE_1__* stations; } ;
struct TYPE_2__ {int /*<<< orphan*/  used; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 size_t IL_INVALID_STATION ; 
 int /*<<< orphan*/  IL_STA_BCAST ; 
 int /*<<< orphan*/  IL_STA_DRIVER_ACTIVE ; 
 int /*<<< orphan*/  il_bcast_addr ; 
 size_t FUNC1 (struct il_priv*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int
FUNC4(struct il_priv *il)
{
	unsigned long flags;
	u8 sta_id;

	FUNC2(&il->sta_lock, flags);
	sta_id = FUNC1(il, il_bcast_addr, false, NULL);
	if (sta_id == IL_INVALID_STATION) {
		FUNC0("Unable to prepare broadcast station\n");
		FUNC3(&il->sta_lock, flags);

		return -EINVAL;
	}

	il->stations[sta_id].used |= IL_STA_DRIVER_ACTIVE;
	il->stations[sta_id].used |= IL_STA_BCAST;
	FUNC3(&il->sta_lock, flags);

	return 0;
}