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
struct wm8350 {int /*<<< orphan*/  i2c_client; } ;

/* Variables and functions */
 int EIO ; 
 int FUNC0 (int /*<<< orphan*/ ,void*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC2(struct wm8350 *wm8350, char reg,
				  int bytes, void *dest)
{
	int ret;

	ret = FUNC1(wm8350->i2c_client, &reg, 1);
	if (ret < 0)
		return ret;
	ret = FUNC0(wm8350->i2c_client, dest, bytes);
	if (ret < 0)
		return ret;
	if (ret != bytes)
		return -EIO;
	return 0;
}