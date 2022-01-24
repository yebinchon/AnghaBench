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
struct TYPE_8__ {int /*<<< orphan*/  sch_no; } ;
struct qdio_irq {TYPE_4__ schid; } ;
struct TYPE_5__ {scalar_t__ cons; } ;
struct TYPE_6__ {TYPE_1__ erw; } ;
struct TYPE_7__ {TYPE_2__ esw0; } ;
struct irb {struct irb* ecw; TYPE_3__ esw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct irb*,int) ; 

__attribute__((used)) static void FUNC2(struct qdio_irq *irq_ptr, struct irb *irb)
{
	if (irb->esw.esw0.erw.cons) {
		FUNC0("%4x sense:", irq_ptr->schid.sch_no);
		FUNC1(irb, 64);
		FUNC1(irb->ecw, 64);
	}
}