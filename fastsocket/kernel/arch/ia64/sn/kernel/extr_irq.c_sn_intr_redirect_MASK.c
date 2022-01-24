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
typedef  scalar_t__ u64 ;
struct sn_irq_info {int dummy; } ;
struct ia64_sal_retval {scalar_t__ status; scalar_t__ v0; } ;
typedef  scalar_t__ nasid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ia64_sal_retval,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ SAL_INTR_REDIRECT ; 
 scalar_t__ SN_SAL_IOIF_INTERRUPT ; 
 int /*<<< orphan*/  FUNC1 (struct sn_irq_info*) ; 

u64 FUNC2(nasid_t local_nasid, int local_widget,
		      struct sn_irq_info *sn_irq_info,
		      nasid_t req_nasid, int req_slice)
{
	struct ia64_sal_retval ret_stuff;
	ret_stuff.status = 0;
	ret_stuff.v0 = 0;

	FUNC0(ret_stuff, (u64) SN_SAL_IOIF_INTERRUPT,
			(u64) SAL_INTR_REDIRECT, (u64) local_nasid,
			(u64) local_widget, FUNC1(sn_irq_info),
			(u64) req_nasid, (u64) req_slice, 0);

	return ret_stuff.status;
}