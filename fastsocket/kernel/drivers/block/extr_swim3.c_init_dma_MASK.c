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
struct dbdma_cmd {scalar_t__ xfer_status; int /*<<< orphan*/  phy_addr; int /*<<< orphan*/  command; int /*<<< orphan*/  req_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 

__attribute__((used)) static inline void FUNC3(struct dbdma_cmd *cp, int cmd,
			    void *buf, int count)
{
	FUNC0(&cp->req_count, count);
	FUNC0(&cp->command, cmd);
	FUNC1(&cp->phy_addr, FUNC2(buf));
	cp->xfer_status = 0;
}