#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_3__ {scalar_t__ dma_base; } ;
typedef  TYPE_1__ ide_hwif_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static u8 FUNC3(ide_hwif_t *hwif, u8 index)
{
	u8 value;

	FUNC2(index, hwif->dma_base + 1);
	value = FUNC1(hwif->dma_base + 3);

	FUNC0("index[%02X] value[%02X]\n", index, value);
	return value;
}