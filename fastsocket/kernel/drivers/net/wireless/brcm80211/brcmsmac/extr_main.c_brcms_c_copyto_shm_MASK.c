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
struct brcms_c_info {int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  OBJADDR_SHM_SEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void const*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct brcms_c_info *wlc, uint offset,
			const void *buf, int len)
{
	FUNC0(wlc->hw, offset, buf, len, OBJADDR_SHM_SEL);
}