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
struct TYPE_2__ {int imask0; } ;

/* Variables and functions */
 unsigned int SGINT_LOCAL0 ; 
 TYPE_1__* sgint ; 

__attribute__((used)) static void FUNC0(unsigned int irq)
{
	sgint->imask0 &= ~(1 << (irq - SGINT_LOCAL0));
}