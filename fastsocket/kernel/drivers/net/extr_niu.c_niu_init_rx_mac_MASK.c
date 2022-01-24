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
struct niu {int flags; TYPE_1__* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int NIU_FLAGS_XMAC ; 
 int /*<<< orphan*/  FUNC0 (struct niu*) ; 
 int /*<<< orphan*/  FUNC1 (struct niu*) ; 
 int /*<<< orphan*/  FUNC2 (struct niu*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct niu *np)
{
	FUNC2(np, np->dev->dev_addr);

	if (np->flags & NIU_FLAGS_XMAC)
		FUNC1(np);
	else
		FUNC0(np);
}