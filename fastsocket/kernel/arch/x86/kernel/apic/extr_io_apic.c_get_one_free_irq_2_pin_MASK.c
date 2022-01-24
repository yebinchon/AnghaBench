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
struct irq_pin_list {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct irq_pin_list* FUNC0 (int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct irq_pin_list *FUNC1(int node)
{
	struct irq_pin_list *pin;

	pin = FUNC0(sizeof(*pin), GFP_ATOMIC, node);

	return pin;
}