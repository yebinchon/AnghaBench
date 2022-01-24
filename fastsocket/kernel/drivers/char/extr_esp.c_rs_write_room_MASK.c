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
struct esp_struct {int xmit_cnt; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int ESP_XMIT_SIZE ; 
 scalar_t__ FUNC0 (struct esp_struct*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct tty_struct *tty)
{
	struct esp_struct *info = tty->driver_data;
	int	ret;
	unsigned long flags;

	if (FUNC0(info, tty->name, "rs_write_room"))
		return 0;

	FUNC1(&info->lock, flags);

	ret = ESP_XMIT_SIZE - info->xmit_cnt - 1;
	if (ret < 0)
		ret = 0;
	FUNC2(&info->lock, flags);
	return ret;
}