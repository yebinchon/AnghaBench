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
struct TYPE_2__ {scalar_t__ got_datablkend; scalar_t__ got_dataend; int /*<<< orphan*/ * data; } ;
struct msmsdcc_host {TYPE_1__ curr; scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ MMCIDATACTRL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void
FUNC1(struct msmsdcc_host *host)
{
	FUNC0(0, host->base + MMCIDATACTRL);
	host->curr.data = NULL;
	host->curr.got_dataend = host->curr.got_datablkend = 0;
}