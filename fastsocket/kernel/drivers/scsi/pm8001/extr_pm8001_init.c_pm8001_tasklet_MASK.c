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
typedef  int /*<<< orphan*/  u32 ;
struct pm8001_hba_info {int /*<<< orphan*/  int_vector; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* isr ) (struct pm8001_hba_info*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* PM8001_CHIP_DISP ; 
 int /*<<< orphan*/  FUNC1 (struct pm8001_hba_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(unsigned long opaque)
{
	struct pm8001_hba_info *pm8001_ha;
	u32 vec;
	pm8001_ha = (struct pm8001_hba_info *)opaque;
	if (FUNC2(!pm8001_ha))
		FUNC0(1);
	vec = pm8001_ha->int_vector;
	PM8001_CHIP_DISP->isr(pm8001_ha, vec);
}