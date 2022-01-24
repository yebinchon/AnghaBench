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
struct s3c2410_hcd_info {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct s3c2410_hcd_info*,int) ; 

__attribute__((used)) static irqreturn_t
FUNC4(int irq, void *pw)
{
	struct s3c2410_hcd_info *info = pw;

	if (FUNC1(FUNC0(10)) == 0) {
		FUNC2("usb_simtec: over-current irq (oc detected)\n");
		FUNC3(info, 3);
	} else {
		FUNC2("usb_simtec: over-current irq (oc cleared)\n");
		FUNC3(info, 0);
	}

	return IRQ_HANDLED;
}