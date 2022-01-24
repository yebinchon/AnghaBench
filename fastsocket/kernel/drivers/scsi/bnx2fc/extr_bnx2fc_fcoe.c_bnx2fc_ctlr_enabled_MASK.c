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
struct fcoe_ctlr_device {int enabled; } ;
struct fcoe_ctlr {int dummy; } ;

/* Variables and functions */
 int ENOTSUPP ; 
#define  FCOE_CTLR_DISABLED 130 
#define  FCOE_CTLR_ENABLED 129 
#define  FCOE_CTLR_UNUSED 128 
 int FUNC0 (struct fcoe_ctlr*) ; 
 int FUNC1 (struct fcoe_ctlr*) ; 
 struct fcoe_ctlr* FUNC2 (struct fcoe_ctlr_device*) ; 

__attribute__((used)) static int FUNC3(struct fcoe_ctlr_device *cdev)
{
	struct fcoe_ctlr *ctlr = FUNC2(cdev);

	switch (cdev->enabled) {
	case FCOE_CTLR_ENABLED:
		return FUNC1(ctlr);
	case FCOE_CTLR_DISABLED:
		return FUNC0(ctlr);
	case FCOE_CTLR_UNUSED:
	default:
		return -ENOTSUPP;
	};
}