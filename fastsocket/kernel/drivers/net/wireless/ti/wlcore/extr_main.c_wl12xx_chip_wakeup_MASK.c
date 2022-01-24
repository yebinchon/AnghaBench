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
struct wl1271 {int /*<<< orphan*/  quirks; } ;

/* Variables and functions */
 int /*<<< orphan*/  WLCORE_QUIRK_TX_BLOCKSIZE_ALIGN ; 
 int /*<<< orphan*/  FUNC0 (struct wl1271*) ; 
 int FUNC1 (struct wl1271*) ; 
 int FUNC2 (struct wl1271*,int) ; 
 int FUNC3 (struct wl1271*) ; 

__attribute__((used)) static int FUNC4(struct wl1271 *wl, bool plt)
{
	int ret = 0;

	ret = FUNC3(wl);
	if (ret < 0)
		goto out;

	/*
	 * For wl127x based devices we could use the default block
	 * size (512 bytes), but due to a bug in the sdio driver, we
	 * need to set it explicitly after the chip is powered on.  To
	 * simplify the code and since the performance impact is
	 * negligible, we use the same block size for all different
	 * chip types.
	 *
	 * Check if the bus supports blocksize alignment and, if it
	 * doesn't, make sure we don't have the quirk.
	 */
	if (!FUNC0(wl))
		wl->quirks &= ~WLCORE_QUIRK_TX_BLOCKSIZE_ALIGN;

	/* TODO: make sure the lower driver has set things up correctly */

	ret = FUNC1(wl);
	if (ret < 0)
		goto out;

	ret = FUNC2(wl, plt);
	if (ret < 0)
		goto out;

out:
	return ret;
}