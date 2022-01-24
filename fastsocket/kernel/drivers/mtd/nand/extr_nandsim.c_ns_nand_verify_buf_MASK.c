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
typedef  int /*<<< orphan*/  u_char ;
struct mtd_info {int dummy; } ;

/* Variables and functions */
 int EFAULT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mtd_info*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * ns_verify_buf ; 

__attribute__((used)) static int FUNC3(struct mtd_info *mtd, const u_char *buf, int len)
{
	FUNC2(mtd, (u_char *)&ns_verify_buf[0], len);

	if (!FUNC1(buf, &ns_verify_buf[0], len)) {
		FUNC0("verify_buf: the buffer is OK\n");
		return 0;
	} else {
		FUNC0("verify_buf: the buffer is wrong\n");
		return -EFAULT;
	}
}