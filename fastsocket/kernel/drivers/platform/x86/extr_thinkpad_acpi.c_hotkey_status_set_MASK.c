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

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char*,int) ; 
 int /*<<< orphan*/  hkey_handle ; 

__attribute__((used)) static int FUNC1(bool enable)
{
	if (!FUNC0(hkey_handle, NULL, "MHKC", "vd", enable ? 1 : 0))
		return -EIO;

	return 0;
}