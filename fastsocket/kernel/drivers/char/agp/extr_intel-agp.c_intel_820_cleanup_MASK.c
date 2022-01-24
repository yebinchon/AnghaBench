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
struct aper_size_info_8 {int size_value; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  previous_size; } ;

/* Variables and functions */
 struct aper_size_info_8* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INTEL_APSIZE ; 
 int /*<<< orphan*/  INTEL_I820_RDCR ; 
 TYPE_1__* agp_bridge ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(void)
{
	u8 temp;
	struct aper_size_info_8 *previous_size;

	previous_size = FUNC0(agp_bridge->previous_size);
	FUNC1(agp_bridge->dev, INTEL_I820_RDCR, &temp);
	FUNC2(agp_bridge->dev, INTEL_I820_RDCR,
			temp & ~(1 << 1));
	FUNC2(agp_bridge->dev, INTEL_APSIZE,
			previous_size->size_value);
}