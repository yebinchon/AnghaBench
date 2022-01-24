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
struct TYPE_7__ {TYPE_4__* oldest_read; } ;
struct t4_wq {TYPE_3__ sq; } ;
struct TYPE_5__ {int /*<<< orphan*/  cidx; } ;
struct TYPE_6__ {TYPE_1__ scqe; } ;
struct t4_cqe {int /*<<< orphan*/  bits_type_ts; int /*<<< orphan*/  header; int /*<<< orphan*/  len; TYPE_2__ u; } ;
struct TYPE_8__ {int /*<<< orphan*/  read_len; int /*<<< orphan*/  idx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct t4_cqe*) ; 
 int /*<<< orphan*/  FW_RI_READ_REQ ; 
 int /*<<< orphan*/  FUNC1 (struct t4_cqe*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static void FUNC8(struct t4_wq *wq, struct t4_cqe *hw_cqe,
				struct t4_cqe *read_cqe)
{
	read_cqe->u.scqe.cidx = wq->sq.oldest_read->idx;
	read_cqe->len = FUNC6(wq->sq.oldest_read->read_len);
	read_cqe->header = FUNC7(FUNC3(FUNC0(hw_cqe)) |
				 FUNC4(FUNC1(hw_cqe)) |
				 FUNC2(FW_RI_READ_REQ) |
				 FUNC5(1));
	read_cqe->bits_type_ts = hw_cqe->bits_type_ts;
}