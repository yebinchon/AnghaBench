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
struct usb_ov511 {int /*<<< orphan*/  buf_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_ov511*) ; 

__attribute__((used)) static void
FUNC4(struct usb_ov511 *ov)
{
	FUNC0(4, "entered");
	FUNC1(&ov->buf_lock);
	FUNC3(ov);
	FUNC2(&ov->buf_lock);
	FUNC0(4, "leaving");
}