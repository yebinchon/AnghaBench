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
struct dasd_device {void* state; struct dasd_block* block; } ;
struct dasd_block {int blocks; int s2b_shift; int /*<<< orphan*/  gdp; TYPE_2__* base; } ;
struct TYPE_4__ {TYPE_1__* discipline; } ;
struct TYPE_3__ {int (* do_analysis ) (struct dasd_block*) ;} ;

/* Variables and functions */
 void* DASD_STATE_BASIC ; 
 void* DASD_STATE_READY ; 
 void* DASD_STATE_UNFMT ; 
 int EAGAIN ; 
 int FUNC0 (struct dasd_block*) ; 
 int /*<<< orphan*/  FUNC1 (struct dasd_block*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct dasd_block*) ; 

__attribute__((used)) static int FUNC4(struct dasd_device *device)
{
	int rc;
	struct dasd_block *block;

	rc = 0;
	block = device->block;
	/* make disk known with correct capacity */
	if (block) {
		if (block->base->discipline->do_analysis != NULL)
			rc = block->base->discipline->do_analysis(block);
		if (rc) {
			if (rc != -EAGAIN)
				device->state = DASD_STATE_UNFMT;
			return rc;
		}
		FUNC1(block);
		FUNC2(block->gdp,
			     block->blocks << block->s2b_shift);
		device->state = DASD_STATE_READY;
		rc = FUNC0(block);
		if (rc)
			device->state = DASD_STATE_BASIC;
	} else {
		device->state = DASD_STATE_READY;
	}
	return rc;
}