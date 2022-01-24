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
struct tty_struct {int /*<<< orphan*/  name; struct esp_struct* driver_data; } ;
struct esp_struct {int /*<<< orphan*/  lock; scalar_t__ xmit_tail; scalar_t__ xmit_head; scalar_t__ xmit_cnt; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct esp_struct*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct tty_struct*) ; 

__attribute__((used)) static void FUNC4(struct tty_struct *tty)
{
	struct esp_struct *info = tty->driver_data;
	unsigned long flags;

	if (FUNC0(info, tty->name, "rs_flush_buffer"))
		return;
	FUNC1(&info->lock, flags);
	info->xmit_cnt = info->xmit_head = info->xmit_tail = 0;
	FUNC2(&info->lock, flags);
	FUNC3(tty);
}