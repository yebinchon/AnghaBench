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
typedef  int /*<<< orphan*/  uint ;
typedef  int /*<<< orphan*/  u16 ;
struct brcms_hardware {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  OBJADDR_SHM_SEL ; 
 int /*<<< orphan*/  FUNC0 (struct brcms_hardware*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC1(struct brcms_hardware *wlc_hw, uint offset, u16 v)
{
	FUNC0(wlc_hw, offset, v, OBJADDR_SHM_SEL);
}