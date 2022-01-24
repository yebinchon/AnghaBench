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
struct usb_interface {int /*<<< orphan*/  dev; } ;
struct alauda {int /*<<< orphan*/  kref; } ;

/* Variables and functions */
 int /*<<< orphan*/  alauda_delete ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct alauda* FUNC2 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_interface*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct usb_interface *interface)
{
	struct alauda *al;

	al = FUNC2(interface);
	FUNC3(interface, NULL);

	/* FIXME: prevent more I/O from starting */

	/* decrement our usage count */
	if (al)
		FUNC1(&al->kref, alauda_delete);

	FUNC0(&interface->dev, "alauda gone");
}