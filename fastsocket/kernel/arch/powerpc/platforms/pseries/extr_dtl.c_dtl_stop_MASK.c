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
struct dtl {size_t cpu; } ;
struct TYPE_2__ {int dtl_enable_mask; } ;

/* Variables and functions */
 int FUNC0 (size_t) ; 
 TYPE_1__* lppaca ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(struct dtl *dtl)
{
	int hwcpu = FUNC0(dtl->cpu);

	lppaca[dtl->cpu].dtl_enable_mask = 0x0;

	FUNC1(hwcpu);
}