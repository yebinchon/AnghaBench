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
struct sge_params {int rx_coalesce_usecs; } ;
struct sge {int fixed_intrtimer; TYPE_1__* adapter; } ;
struct TYPE_2__ {scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ A_SG_INTRTIMER ; 
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

int FUNC2(struct sge *sge, struct sge_params *p)
{
	sge->fixed_intrtimer = p->rx_coalesce_usecs *
		FUNC0(sge->adapter);
	FUNC1(sge->fixed_intrtimer, sge->adapter->regs + A_SG_INTRTIMER);
	return 0;
}