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
struct ioc3_driver_data {TYPE_1__* vma; } ;
struct TYPE_2__ {int /*<<< orphan*/  mcr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ioc3_driver_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct ioc3_driver_data *idd, int bit)
{
	if (bit)
		FUNC2(FUNC0(6, 110), &idd->vma->mcr);
	else
		FUNC2(FUNC0(80, 30), &idd->vma->mcr);

	FUNC1(idd);
}