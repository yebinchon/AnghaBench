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
struct hso_tiocmget {int /*<<< orphan*/ * urb; } ;
struct hso_serial {struct hso_tiocmget* tiocmget; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hso_tiocmget*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct hso_serial *serial)
{
	struct hso_tiocmget *tiocmget = serial->tiocmget;
	if (tiocmget) {
		if (tiocmget->urb) {
			FUNC1(tiocmget->urb);
			tiocmget->urb = NULL;
		}
		serial->tiocmget = NULL;
		FUNC0(tiocmget);

	}
}