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
typedef  int /*<<< orphan*/  u32 ;
struct ql_adapter {int rx_ring_count; TYPE_1__* intr_context; } ;
struct TYPE_2__ {int /*<<< orphan*/  intr_read_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  INTR_EN ; 
 int /*<<< orphan*/  FUNC0 (struct ql_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ql_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct ql_adapter *qdev, u32 *buf)
{
	int i;

	for (i = 0; i < qdev->rx_ring_count; i++, buf++) {
		FUNC1(qdev, INTR_EN,
				qdev->intr_context[i].intr_read_mask);
		*buf = FUNC0(qdev, INTR_EN);
	}
}