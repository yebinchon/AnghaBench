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
struct sbp2_target {unsigned int mgt_orb_timeout; int /*<<< orphan*/  bus_id; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC2(struct sbp2_target *tgt)
{
	unsigned int timeout = tgt->mgt_orb_timeout;

	if (timeout > 40000)
		FUNC1("%s: %ds mgt_ORB_timeout limited to 40s\n",
			  tgt->bus_id, timeout / 1000);

	tgt->mgt_orb_timeout = FUNC0(timeout, 5000, 40000);
}