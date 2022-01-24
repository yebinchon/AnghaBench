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
typedef  int u32 ;
struct TYPE_3__ {int usec_timeout; } ;
typedef  TYPE_1__ drm_r128_private_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int EBUSY ; 
 int R128_PC_BUSY ; 
 int R128_PC_FLUSH_ALL ; 
 int /*<<< orphan*/  R128_PC_NGUI_CTLSTAT ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(drm_r128_private_t *dev_priv)
{
	u32 tmp;
	int i;

	tmp = FUNC2(R128_PC_NGUI_CTLSTAT) | R128_PC_FLUSH_ALL;
	FUNC3(R128_PC_NGUI_CTLSTAT, tmp);

	for (i = 0; i < dev_priv->usec_timeout; i++) {
		if (!(FUNC2(R128_PC_NGUI_CTLSTAT) & R128_PC_BUSY))
			return 0;
		FUNC1(1);
	}

#if R128_FIFO_DEBUG
	DRM_ERROR("failed!\n");
#endif
	return -EBUSY;
}