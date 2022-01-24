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
struct esp_struct {unsigned char* xmit_buf; int xmit_cnt; int xmit_head; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int ESP_XMIT_SIZE ; 
 scalar_t__ FUNC0 (struct esp_struct*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct tty_struct *tty, unsigned char ch)
{
	struct esp_struct *info = tty->driver_data;
	unsigned long flags;
	int ret = 0;

	if (FUNC0(info, tty->name, "rs_put_char"))
		return 0;

	if (!info->xmit_buf)
		return 0;

	FUNC1(&info->lock, flags);
	if (info->xmit_cnt < ESP_XMIT_SIZE - 1) {
		info->xmit_buf[info->xmit_head++] = ch;
		info->xmit_head &= ESP_XMIT_SIZE-1;
		info->xmit_cnt++;
		ret = 1;
	}
	FUNC2(&info->lock, flags);
	return ret;
}