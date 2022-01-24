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
struct tg3 {int irq_sync; int irq_cnt; TYPE_1__* napi; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq_vec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct tg3 *tp)
{
	int i;

	FUNC0(tp->irq_sync);

	tp->irq_sync = 1;
	FUNC1();

	for (i = 0; i < tp->irq_cnt; i++)
		FUNC2(tp->napi[i].irq_vec);
}