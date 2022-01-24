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

/* Variables and functions */
 unsigned int RBTX4939_IRQ_IOC ; 
 int /*<<< orphan*/  rbtx4939_ien_addr ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(unsigned int irq)
{
	int ioc_nr = irq - RBTX4939_IRQ_IOC;

	FUNC1(FUNC0(rbtx4939_ien_addr) | (1 << ioc_nr), rbtx4939_ien_addr);
}