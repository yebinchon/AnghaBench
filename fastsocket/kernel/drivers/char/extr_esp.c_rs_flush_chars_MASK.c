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
struct tty_struct {scalar_t__ stopped; int /*<<< orphan*/  name; struct esp_struct* driver_data; } ;
struct esp_struct {scalar_t__ xmit_cnt; int IER; int /*<<< orphan*/  lock; int /*<<< orphan*/  xmit_buf; } ;

/* Variables and functions */
 int ESI_SET_SRV_MASK ; 
 int /*<<< orphan*/  UART_ESI_CMD1 ; 
 int /*<<< orphan*/  UART_ESI_CMD2 ; 
 int UART_IER_THRI ; 
 int /*<<< orphan*/  FUNC0 (struct esp_struct*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (struct esp_struct*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct tty_struct *tty)
{
	struct esp_struct *info = tty->driver_data;
	unsigned long flags;

	if (FUNC1(info, tty->name, "rs_flush_chars"))
		return;

	FUNC2(&info->lock, flags);

	if (info->xmit_cnt <= 0 || tty->stopped || !info->xmit_buf)
		goto out;

	if (!(info->IER & UART_IER_THRI)) {
		info->IER |= UART_IER_THRI;
		FUNC0(info, UART_ESI_CMD1, ESI_SET_SRV_MASK);
		FUNC0(info, UART_ESI_CMD2, info->IER);
	}
out:
	FUNC3(&info->lock, flags);
}