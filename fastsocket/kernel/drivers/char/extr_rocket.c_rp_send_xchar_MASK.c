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
struct tty_struct {struct r_port* driver_data; } ;
struct r_port {int /*<<< orphan*/  channel; } ;
typedef  int /*<<< orphan*/  CHANNEL_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct r_port*,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char) ; 

__attribute__((used)) static void FUNC5(struct tty_struct *tty, char ch)
{
	struct r_port *info = tty->driver_data;
	CHANNEL_t *cp;

	if (FUNC0(info, "rp_send_xchar"))
		return;

	cp = &info->channel;
	if (FUNC1(cp))
		FUNC4(cp, ch);
	else
		FUNC3(FUNC2(cp), ch);
}