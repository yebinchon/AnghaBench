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
struct irq_desc {int dummy; } ;
struct TYPE_2__ {unsigned short int_status; } ;

/* Variables and functions */
 scalar_t__ PB1200_INT_BEGIN ; 
 scalar_t__ FUNC0 (unsigned short) ; 
 TYPE_1__* bcsr ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

__attribute__((used)) static void FUNC2(unsigned int irq, struct irq_desc *d)
{
	unsigned short bisr = bcsr->int_status;

	for ( ; bisr; bisr &= bisr - 1)
		FUNC1(PB1200_INT_BEGIN + FUNC0(bisr));
}