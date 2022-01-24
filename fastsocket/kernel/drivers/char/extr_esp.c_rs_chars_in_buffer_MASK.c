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
struct esp_struct {int xmit_cnt; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct esp_struct*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC1(struct tty_struct *tty)
{
	struct esp_struct *info = tty->driver_data;

	if (FUNC0(info, tty->name, "rs_chars_in_buffer"))
		return 0;
	return info->xmit_cnt;
}