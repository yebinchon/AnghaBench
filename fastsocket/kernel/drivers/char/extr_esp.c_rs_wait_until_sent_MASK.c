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
struct esp_struct {int timeout; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESI_GET_TX_AVAIL ; 
 int /*<<< orphan*/  ESI_NO_COMMAND ; 
 int HZ ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  UART_ESI_CMD1 ; 
 int /*<<< orphan*/  UART_ESI_STAT1 ; 
 int /*<<< orphan*/  UART_ESI_STAT2 ; 
 int /*<<< orphan*/  current ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct esp_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct esp_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct esp_struct*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC9 (unsigned long,unsigned long) ; 

__attribute__((used)) static void FUNC10(struct tty_struct *tty, int timeout)
{
	struct esp_struct *info = tty->driver_data;
	unsigned long orig_jiffies, char_time;
	unsigned long flags;

	if (FUNC4(info, tty->name, "rs_wait_until_sent"))
		return;

	orig_jiffies = jiffies;
	char_time = ((info->timeout - HZ / 50) / 1024) / 5;

	if (!char_time)
		char_time = 1;

	FUNC7(&info->lock, flags);
	FUNC3(info, UART_ESI_CMD1, ESI_NO_COMMAND);
	FUNC3(info, UART_ESI_CMD1, ESI_GET_TX_AVAIL);

	while ((FUNC2(info, UART_ESI_STAT1) != 0x03) ||
		(FUNC2(info, UART_ESI_STAT2) != 0xff)) {

		FUNC8(&info->lock, flags);
		FUNC1(FUNC0(char_time));

		if (FUNC6(current))
			return;

		if (timeout && FUNC9(jiffies, orig_jiffies + timeout))
			return;

		FUNC7(&info->lock, flags);
		FUNC3(info, UART_ESI_CMD1, ESI_NO_COMMAND);
		FUNC3(info, UART_ESI_CMD1, ESI_GET_TX_AVAIL);
	}
	FUNC8(&info->lock, flags);
	FUNC5(TASK_RUNNING);
}