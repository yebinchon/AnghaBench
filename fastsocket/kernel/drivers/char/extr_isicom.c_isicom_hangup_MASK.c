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
struct tty_struct {int /*<<< orphan*/  name; struct isi_port* driver_data; } ;
struct isi_port {int /*<<< orphan*/  port; TYPE_1__* card; } ;
struct TYPE_2__ {int /*<<< orphan*/  card_lock; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct isi_port*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct isi_port*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct tty_struct *tty)
{
	struct isi_port *port = tty->driver_data;
	unsigned long flags;

	if (FUNC0(port, tty->name, "isicom_hangup"))
		return;

	FUNC2(&port->card->card_lock, flags);
	FUNC1(port);
	FUNC3(&port->card->card_lock, flags);

	FUNC4(&port->port);
}