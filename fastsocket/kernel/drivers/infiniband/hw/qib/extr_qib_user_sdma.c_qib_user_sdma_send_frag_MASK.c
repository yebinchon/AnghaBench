#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  size_t u16 ;
struct qib_user_sdma_pkt {int naddr; TYPE_1__* addr; } ;
struct qib_pportdata {TYPE_2__* sdma_descq; } ;
typedef  int /*<<< orphan*/  __le64 ;
struct TYPE_4__ {int /*<<< orphan*/ * qw; } ;
struct TYPE_3__ {scalar_t__ length; scalar_t__ offset; scalar_t__ addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qib_pportdata*,int const,int const,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct qib_pportdata *ppd,
				    struct qib_user_sdma_pkt *pkt, int idx,
				    unsigned ofs, u16 tail)
{
	const u64 addr = (u64) pkt->addr[idx].addr +
		(u64) pkt->addr[idx].offset;
	const u64 dwlen = (u64) pkt->addr[idx].length / 4;
	__le64 *descqp;
	__le64 descq0;

	descqp = &ppd->sdma_descq[tail].qw[0];

	descq0 = FUNC0(ppd, addr, dwlen, ofs);
	if (idx == 0)
		descq0 = FUNC2(descq0);
	if (idx == pkt->naddr - 1)
		descq0 = FUNC3(descq0);

	descqp[0] = descq0;
	descqp[1] = FUNC1(addr);
}