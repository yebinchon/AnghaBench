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
struct esp_struct {int /*<<< orphan*/  lock; int /*<<< orphan*/  break_wait; } ;

/* Variables and functions */
 int EINVAL ; 
 int ESI_ISSUE_BREAK ; 
 int /*<<< orphan*/  UART_ESI_CMD1 ; 
 int /*<<< orphan*/  UART_ESI_CMD2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct esp_struct*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (struct esp_struct*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct tty_struct *tty, int break_state)
{
	struct esp_struct *info = tty->driver_data;
	unsigned long flags;

	if (FUNC2(info, tty->name, "esp_break"))
		return -EINVAL;

	if (break_state == -1) {
		FUNC3(&info->lock, flags);
		FUNC1(info, UART_ESI_CMD1, ESI_ISSUE_BREAK);
		FUNC1(info, UART_ESI_CMD2, 0x01);
		FUNC4(&info->lock, flags);

		/* FIXME - new style wait needed here */
		FUNC0(&info->break_wait);
	} else {
		FUNC3(&info->lock, flags);
		FUNC1(info, UART_ESI_CMD1, ESI_ISSUE_BREAK);
		FUNC1(info, UART_ESI_CMD2, 0x00);
		FUNC4(&info->lock, flags);
	}
	return 0;
}