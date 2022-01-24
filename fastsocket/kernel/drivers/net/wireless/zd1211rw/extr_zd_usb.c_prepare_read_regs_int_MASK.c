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
struct TYPE_2__ {unsigned int req_count; int /*<<< orphan*/  completion; struct usb_req_read_regs* req; } ;
struct zd_usb_interrupt {int /*<<< orphan*/  lock; TYPE_1__ read_regs; int /*<<< orphan*/  read_regs_enabled; } ;
struct zd_usb {struct zd_usb_interrupt intr; } ;
struct usb_req_read_regs {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct zd_usb *usb,
				  struct usb_req_read_regs *req,
				  unsigned int count)
{
	struct zd_usb_interrupt *intr = &usb->intr;

	FUNC2(&intr->lock);
	FUNC1(&intr->read_regs_enabled, 1);
	intr->read_regs.req = req;
	intr->read_regs.req_count = count;
	FUNC0(intr->read_regs.completion);
	FUNC3(&intr->lock);
}