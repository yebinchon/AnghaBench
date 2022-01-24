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
struct fcoe_ctlr_device {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct fcoe_ctlr_device* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct fcoe_ctlr_device*) ; 

__attribute__((used)) static void FUNC2(struct device *dev)
{
	struct fcoe_ctlr_device *ctlr = FUNC0(dev);
	FUNC1(ctlr);
}