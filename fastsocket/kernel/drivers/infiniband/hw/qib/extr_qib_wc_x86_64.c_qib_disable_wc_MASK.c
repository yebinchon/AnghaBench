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
struct qib_devdata {scalar_t__ wc_cookie; int /*<<< orphan*/  wc_len; int /*<<< orphan*/  wc_base; int /*<<< orphan*/  pcidev; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC2(struct qib_devdata *dd)
{
	if (dd->wc_cookie) {
		int r;

		r = FUNC0(dd->wc_cookie, dd->wc_base,
			     dd->wc_len);
		if (r < 0)
			FUNC1(dd->pcidev,
				 "mtrr_del(%lx, %lx, %lx) failed: %d\n",
				 dd->wc_cookie, dd->wc_base,
				 dd->wc_len, r);
		dd->wc_cookie = 0; /* even on failure */
	}
}