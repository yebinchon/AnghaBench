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
struct bfa_ioc {int dbg_fwsave_len; int /*<<< orphan*/  dbg_fwsave; } ;

/* Variables and functions */
 int BFA_STATUS_ENOFSAVE ; 
 int BFA_STATUS_OK ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,int) ; 

int
FUNC1(struct bfa_ioc *ioc, void *trcdata, int *trclen)
{
	int tlen;

	if (ioc->dbg_fwsave_len == 0)
		return BFA_STATUS_ENOFSAVE;

	tlen = *trclen;
	if (tlen > ioc->dbg_fwsave_len)
		tlen = ioc->dbg_fwsave_len;

	FUNC0(trcdata, ioc->dbg_fwsave, tlen);
	*trclen = tlen;
	return BFA_STATUS_OK;
}