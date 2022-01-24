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
struct qib_pportdata {struct qib_devdata* dd; } ;
struct qib_devdata {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int FUNC0 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct qib_devdata*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct qib_pportdata*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC3(struct qib_pportdata *ppd, const char *buf,
				  size_t count)
{
	struct qib_devdata *dd = ppd->dd;
	int ret;
	u16 val;

	ret = FUNC0(buf, 0, &val);
	if (ret) {
		FUNC1(dd, "attempt to set invalid LED override\n");
		return ret;
	}

	FUNC2(ppd, val);
	return count;
}