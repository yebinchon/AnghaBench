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
struct map_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPIO91_HX4700_FLASH_VPEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC1(struct map_info *map, int vpp)
{
	FUNC0(GPIO91_HX4700_FLASH_VPEN, vpp);
}