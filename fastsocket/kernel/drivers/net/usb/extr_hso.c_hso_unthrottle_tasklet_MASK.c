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
struct hso_serial {int /*<<< orphan*/  serial_lock; TYPE_1__* parent; } ;
struct TYPE_2__ {int port_spec; } ;

/* Variables and functions */
 int HSO_INTF_MUX ; 
 int /*<<< orphan*/  FUNC0 (struct hso_serial*) ; 
 int /*<<< orphan*/  FUNC1 (struct hso_serial*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct hso_serial *serial)
{
	unsigned long flags;

	FUNC2(&serial->serial_lock, flags);
	if ((serial->parent->port_spec & HSO_INTF_MUX))
		FUNC1(serial);
	else
		FUNC0(serial);
	FUNC3(&serial->serial_lock, flags);
}