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
struct vc_data {int /*<<< orphan*/ * vc_tty; } ;
struct tty_struct {struct vc_data* driver_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct tty_struct*) ; 

__attribute__((used)) static void FUNC4(struct tty_struct *tty)
{
	struct vc_data *vc = tty->driver_data;
	FUNC0(vc == NULL);
	FUNC1();
	vc->vc_tty = NULL;
	FUNC2();
	FUNC3(tty);
}