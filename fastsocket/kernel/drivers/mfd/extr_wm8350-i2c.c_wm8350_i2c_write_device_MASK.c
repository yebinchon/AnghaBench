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
typedef  char u8 ;
struct wm8350 {int /*<<< orphan*/  i2c_client; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int WM8350_MAX_REGISTER ; 
 int FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,void*,int) ; 

__attribute__((used)) static int FUNC2(struct wm8350 *wm8350, char reg,
				   int bytes, void *src)
{
	/* we add 1 byte for device register */
	u8 msg[(WM8350_MAX_REGISTER << 1) + 1];
	int ret;

	if (bytes > ((WM8350_MAX_REGISTER << 1) + 1))
		return -EINVAL;

	msg[0] = reg;
	FUNC1(&msg[1], src, bytes);
	ret = FUNC0(wm8350->i2c_client, msg, bytes + 1);
	if (ret < 0)
		return ret;
	if (ret != bytes + 1)
		return -EIO;
	return 0;
}