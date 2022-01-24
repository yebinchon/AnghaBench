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
typedef  int /*<<< orphan*/  drm_r128_private_t ;

/* Variables and functions */
 int R128_PM4_BUFFER_DL_DONE ; 
 int /*<<< orphan*/  R128_PM4_BUFFER_DL_WPTR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(drm_r128_private_t *dev_priv)
{
	u32 tmp;

	tmp = FUNC0(R128_PM4_BUFFER_DL_WPTR) | R128_PM4_BUFFER_DL_DONE;
	FUNC1(R128_PM4_BUFFER_DL_WPTR, tmp);
}