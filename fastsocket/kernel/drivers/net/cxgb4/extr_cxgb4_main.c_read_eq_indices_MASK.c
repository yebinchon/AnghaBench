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
typedef  scalar_t__ u32 ;
typedef  int u16 ;
struct adapter {int dummy; } ;
typedef  int __be64 ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  A_SGE_DBQ_CTXT_BADDR ; 
 int FUNC0 (int) ; 
 int FUNC1 (struct adapter*,scalar_t__,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (struct adapter*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct adapter *adap, u16 qid, u16 *pidx, u16 *cidx)
{
	u32 addr = FUNC2(adap, A_SGE_DBQ_CTXT_BADDR) + 24 * qid + 8;
	__be64 indices;
	int ret;

	ret = FUNC1(adap, addr, (__be32 *)&indices, 8);
	if (!ret) {
		indices = FUNC0(indices);
		*cidx = (indices >> 25) & 0xffff;
		*pidx = (indices >> 9) & 0xffff;
	}
	return ret;
}