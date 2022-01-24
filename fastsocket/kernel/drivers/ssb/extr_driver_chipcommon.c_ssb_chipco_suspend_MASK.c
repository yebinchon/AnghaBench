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
struct ssb_chipcommon {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  SSB_CLKMODE_SLOW ; 
 int /*<<< orphan*/  FUNC0 (struct ssb_chipcommon*,int /*<<< orphan*/ ) ; 

void FUNC1(struct ssb_chipcommon *cc)
{
	if (!cc->dev)
		return;
	FUNC0(cc, SSB_CLKMODE_SLOW);
}