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
typedef  int u8 ;
typedef  int u32 ;
struct TYPE_2__ {int e; int data_mask; int data_shift; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* picvue ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(u32 data, u8 byte)
{
	data |= picvue->e;
	FUNC1(data);
	data &= ~picvue->data_mask;
	data |= byte << picvue->data_shift;
	FUNC1(data);
	FUNC0(220);
	FUNC1(data & ~picvue->e);
	FUNC0(220);
}