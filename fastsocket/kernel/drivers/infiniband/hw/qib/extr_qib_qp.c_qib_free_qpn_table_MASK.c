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
struct qib_qpn_table {TYPE_1__* map; } ;
struct TYPE_2__ {scalar_t__ page; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 

void FUNC2(struct qib_qpn_table *qpt)
{
	int i;

	for (i = 0; i < FUNC0(qpt->map); i++)
		if (qpt->map[i].page)
			FUNC1((unsigned long) qpt->map[i].page);
}