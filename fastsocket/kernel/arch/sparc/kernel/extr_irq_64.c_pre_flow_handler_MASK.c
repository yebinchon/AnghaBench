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
struct irq_handler_data {int /*<<< orphan*/  arg2; int /*<<< orphan*/  arg1; int /*<<< orphan*/  (* pre_handler ) (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct irq_desc {int dummy; } ;
struct TYPE_2__ {unsigned int dev_ino; } ;

/* Variables and functions */
 struct irq_handler_data* FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* virt_irq_table ; 

__attribute__((used)) static void FUNC3(unsigned int virt_irq,
				      struct irq_desc *desc)
{
	struct irq_handler_data *data = FUNC0(virt_irq);
	unsigned int ino = virt_irq_table[virt_irq].dev_ino;

	data->pre_handler(ino, data->arg1, data->arg2);

	FUNC1(virt_irq, desc);
}