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
struct tty_struct {int /*<<< orphan*/  hw_stopped; int /*<<< orphan*/  stopped; int /*<<< orphan*/  name; struct slgt_info* driver_data; } ;
struct slgt_info {unsigned char const* tx_buf; int max_frame_size; int tx_count; unsigned int tbuf_current; unsigned int tbuf_count; int /*<<< orphan*/  device_name; int /*<<< orphan*/  lock; int /*<<< orphan*/ * tbufs; int /*<<< orphan*/  tx_active; } ;

/* Variables and functions */
 int BIT0 ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int DMABUFSIZE ; 
 int EIO ; 
 int /*<<< orphan*/  TDCSR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (struct slgt_info*) ; 
 int FUNC3 (struct slgt_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct slgt_info*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct slgt_info*,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct slgt_info*) ; 
 int /*<<< orphan*/  FUNC9 (struct slgt_info*) ; 

__attribute__((used)) static int FUNC10(struct tty_struct *tty,
		 const unsigned char *buf, int count)
{
	int ret = 0;
	struct slgt_info *info = tty->driver_data;
	unsigned long flags;
	unsigned int bufs_needed;

	if (FUNC4(info, tty->name, "write"))
		goto cleanup;
	FUNC0(("%s write count=%d\n", info->device_name, count));

	if (!info->tx_buf)
		goto cleanup;

	if (count > info->max_frame_size) {
		ret = -EIO;
		goto cleanup;
	}

	if (!count)
		goto cleanup;

	if (!info->tx_active && info->tx_count) {
		/* send accumulated data from send_char() */
		FUNC7(info, info->tx_buf, info->tx_count);
		goto start;
	}
	bufs_needed = (count/DMABUFSIZE);
	if (count % DMABUFSIZE)
		++bufs_needed;
	if (bufs_needed > FUNC2(info))
		goto cleanup;

	ret = info->tx_count = count;
	FUNC7(info, buf, count);
	goto start;

start:
 	if (info->tx_count && !tty->stopped && !tty->hw_stopped) {
		FUNC5(&info->lock,flags);
		if (!info->tx_active)
		 	FUNC8(info);
		else if (!(FUNC3(info, TDCSR) & BIT0)) {
			/* transmit still active but transmit DMA stopped */
			unsigned int i = info->tbuf_current;
			if (!i)
				i = info->tbuf_count;
			i--;
			/* if DMA buf unsent must try later after tx idle */
			if (FUNC1(info->tbufs[i]))
				ret = 0;
		}
		if (ret > 0)
			FUNC9(info);
		FUNC6(&info->lock,flags);
 	}

cleanup:
	FUNC0(("%s write rc=%d\n", info->device_name, ret));
	return ret;
}