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
typedef  int u32 ;
struct brcms_hardware {struct bcma_device* d11core; } ;
struct bcma_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCMA_IOCTL ; 
 int FUNC0 (struct bcma_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bcma_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct brcms_hardware *wlc_hw, u32 m, u32 v)
{
	struct bcma_device *core = wlc_hw->d11core;
	u32 ioctl = FUNC0(core, BCMA_IOCTL) & ~m;

	FUNC1(core, BCMA_IOCTL, ioctl | v);
}