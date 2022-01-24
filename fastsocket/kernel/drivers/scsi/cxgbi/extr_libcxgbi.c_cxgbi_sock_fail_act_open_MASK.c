#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  s_addr; } ;
struct TYPE_8__ {int /*<<< orphan*/  sin_port; TYPE_3__ sin_addr; } ;
struct TYPE_5__ {int /*<<< orphan*/  s_addr; } ;
struct TYPE_6__ {int /*<<< orphan*/  sin_port; TYPE_1__ sin_addr; } ;
struct cxgbi_sock {int err; TYPE_4__ daddr; TYPE_2__ saddr; int /*<<< orphan*/  flags; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTP_CONNECTING ; 
 int /*<<< orphan*/  FUNC0 (struct cxgbi_sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct cxgbi_sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct cxgbi_sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

void FUNC3(struct cxgbi_sock *csk, int errno)
{
	FUNC2("csk 0x%p,%u,%lx, %pI4:%u-%pI4:%u, err %d.\n",
			csk, csk->state, csk->flags,
			&csk->saddr.sin_addr.s_addr, csk->saddr.sin_port,
			&csk->daddr.sin_addr.s_addr, csk->daddr.sin_port,
			errno);

	FUNC1(csk, CTP_CONNECTING);
	csk->err = errno;
	FUNC0(csk);
}