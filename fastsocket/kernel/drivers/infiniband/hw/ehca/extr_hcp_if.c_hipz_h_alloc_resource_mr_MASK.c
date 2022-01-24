#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned long long u64 ;
typedef  void* u32 ;
struct ipz_pd {int /*<<< orphan*/  value; } ;
struct ipz_adapter_handle {int /*<<< orphan*/  handle; } ;
struct TYPE_2__ {unsigned long handle; } ;
struct ehca_mr_hipzout_parms {void* rkey; void* lkey; TYPE_1__ handle; } ;
struct ehca_mr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  H_ALLOC_RESOURCE ; 
 int PLPAR_HCALL9_BUFSIZE ; 
 unsigned long long FUNC0 (int /*<<< orphan*/ ,unsigned long*,int /*<<< orphan*/ ,int,unsigned long long const,unsigned long long const,unsigned long long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

u64 FUNC1(const struct ipz_adapter_handle adapter_handle,
			     const struct ehca_mr *mr,
			     const u64 vaddr,
			     const u64 length,
			     const u32 access_ctrl,
			     const struct ipz_pd pd,
			     struct ehca_mr_hipzout_parms *outparms)
{
	u64 ret;
	unsigned long outs[PLPAR_HCALL9_BUFSIZE];

	ret = FUNC0(H_ALLOC_RESOURCE, outs,
				adapter_handle.handle,            /* r4 */
				5,                                /* r5 */
				vaddr,                            /* r6 */
				length,                           /* r7 */
				(((u64)access_ctrl) << 32ULL),    /* r8 */
				pd.value,                         /* r9 */
				0, 0, 0);
	outparms->handle.handle = outs[0];
	outparms->lkey = (u32)outs[2];
	outparms->rkey = (u32)outs[3];

	return ret;
}