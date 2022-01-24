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
struct asd_ha_struct {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/ * function; } ;
struct TYPE_3__ {int /*<<< orphan*/  vaddr; } ;
struct asd_ascb {int tc_index; TYPE_2__ timer; struct asd_ha_struct* ha; TYPE_1__ dma_scb; int /*<<< orphan*/  scb; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 

__attribute__((used)) static inline void FUNC2(struct asd_ha_struct *asd_ha,
				 struct asd_ascb *ascb)
{
	FUNC0(&ascb->list);
	ascb->scb = ascb->dma_scb.vaddr;
	ascb->ha = asd_ha;
	ascb->timer.function = NULL;
	FUNC1(&ascb->timer);
	ascb->tc_index = -1;
}