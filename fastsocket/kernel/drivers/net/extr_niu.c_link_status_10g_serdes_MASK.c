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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u64 ;
typedef  int /*<<< orphan*/  u16 ;
struct niu_link_config {int /*<<< orphan*/  active_duplex; int /*<<< orphan*/  active_speed; } ;
struct niu {int flags; int /*<<< orphan*/  lock; struct niu_link_config link_config; } ;

/* Variables and functions */
 int /*<<< orphan*/  DUPLEX_FULL ; 
 int /*<<< orphan*/  DUPLEX_INVALID ; 
 int NIU_FLAGS_10G ; 
 int /*<<< orphan*/  SPEED_10000 ; 
 int /*<<< orphan*/  SPEED_INVALID ; 
 int /*<<< orphan*/  XMAC_INTER2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct niu*,int*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct niu *np, int *link_up_p)
{
	unsigned long flags;
	struct niu_link_config *lp = &np->link_config;
	int link_up = 0;
	int link_ok = 1;
	u64 val, val2;
	u16 current_speed;
	u8 current_duplex;

	if (!(np->flags & NIU_FLAGS_10G))
		return FUNC1(np, link_up_p);

	current_speed = SPEED_INVALID;
	current_duplex = DUPLEX_INVALID;
	FUNC4(&np->lock, flags);

	val = FUNC3(FUNC0(0));
	val2 = FUNC2(XMAC_INTER2);
	if (val2 & 0x01000000)
		link_ok = 0;

	if ((val & 0x1000ULL) && link_ok) {
		link_up = 1;
		current_speed = SPEED_10000;
		current_duplex = DUPLEX_FULL;
	}
	lp->active_speed = current_speed;
	lp->active_duplex = current_duplex;
	FUNC5(&np->lock, flags);
	*link_up_p = link_up;
	return 0;
}