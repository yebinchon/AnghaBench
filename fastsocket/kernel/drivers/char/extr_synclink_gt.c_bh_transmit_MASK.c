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
struct tty_struct {int dummy; } ;
struct TYPE_2__ {struct tty_struct* tty; } ;
struct slgt_info {int /*<<< orphan*/  device_name; TYPE_1__ port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct tty_struct*) ; 

__attribute__((used)) static void FUNC2(struct slgt_info *info)
{
	struct tty_struct *tty = info->port.tty;

	FUNC0(("%s bh_transmit\n", info->device_name));
	if (tty)
		FUNC1(tty);
}