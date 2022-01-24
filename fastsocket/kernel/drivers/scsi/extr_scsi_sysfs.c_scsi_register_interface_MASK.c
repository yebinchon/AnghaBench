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
struct class_interface {int /*<<< orphan*/ * class; } ;

/* Variables and functions */
 int FUNC0 (struct class_interface*) ; 
 int /*<<< orphan*/  sdev_class ; 

int FUNC1(struct class_interface *intf)
{
	intf->class = &sdev_class;

	return FUNC0(intf);
}