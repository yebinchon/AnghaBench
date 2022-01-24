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
typedef  int /*<<< orphan*/  u_long ;
struct TYPE_3__ {int /*<<< orphan*/  timer; } ;
struct TYPE_4__ {TYPE_1__ saphir; } ;
struct IsdnCardState {TYPE_2__ hw; int /*<<< orphan*/  lock; int /*<<< orphan*/  (* readisac ) (struct IsdnCardState*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  ISAC_RBCH ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct IsdnCardState*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct IsdnCardState *cs)
{
	u_long flags;

	FUNC1(&cs->lock, flags);
        /* 5 sec WatchDog, so read at least every 4 sec */
	cs->readisac(cs, ISAC_RBCH);
	FUNC2(&cs->lock, flags);
	FUNC0(&cs->hw.saphir.timer, jiffies+1*HZ);
}