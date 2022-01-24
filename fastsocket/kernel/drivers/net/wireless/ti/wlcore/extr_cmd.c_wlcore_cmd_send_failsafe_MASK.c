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
typedef  int /*<<< orphan*/  u16 ;
struct wl1271 {int dummy; } ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CMD_STATUS_SUCCESS ; 
 int EIO ; 
 int MAX_COMMAND_STATUS ; 
 int FUNC1 (struct wl1271*,int /*<<< orphan*/ ,void*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct wl1271*) ; 

int FUNC5(struct wl1271 *wl, u16 id, void *buf, size_t len,
			     size_t res_len, unsigned long valid_rets)
{
	int ret = FUNC1(wl, id, buf, len, res_len);

	if (ret < 0)
		goto fail;

	/* success is always a valid status */
	valid_rets |= FUNC0(CMD_STATUS_SUCCESS);

	if (ret >= MAX_COMMAND_STATUS ||
	    !FUNC2(ret, &valid_rets)) {
		FUNC3("command execute failure %d", ret);
		ret = -EIO;
		goto fail;
	}
	return ret;
fail:
	FUNC4(wl);
	return ret;
}