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
struct tty_struct {int count; int /*<<< orphan*/ * driver_data; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * sclp_vt220_tty ; 

__attribute__((used)) static void
FUNC1(struct tty_struct *tty, struct file *filp)
{
	if (tty->count == 1) {
		sclp_vt220_tty = NULL;
		FUNC0(tty->driver_data);
		tty->driver_data = NULL;
	}
}