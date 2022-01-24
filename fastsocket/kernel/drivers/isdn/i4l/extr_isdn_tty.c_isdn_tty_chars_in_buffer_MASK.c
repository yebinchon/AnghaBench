#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tty_struct {int /*<<< orphan*/  name; scalar_t__ driver_data; } ;
struct TYPE_3__ {int xmit_count; int /*<<< orphan*/  online; } ;
typedef  TYPE_1__ modem_info ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC1(struct tty_struct *tty)
{
	modem_info *info = (modem_info *) tty->driver_data;

	if (FUNC0(info, tty->name, "isdn_tty_chars_in_buffer"))
		return 0;
	if (!info->online)
		return 0;
	return (info->xmit_count);
}