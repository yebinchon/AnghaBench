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
struct TYPE_3__ {int irq_pending_mask; } ;
typedef  TYPE_1__ drm_via_private_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VIA_REG_INTERRUPT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static __inline__ void FUNC2(drm_via_private_t *dev_priv)
{
	u32 status;

	if (dev_priv) {
		/* Acknowledge interrupts */
		status = FUNC0(VIA_REG_INTERRUPT);
		FUNC1(VIA_REG_INTERRUPT, status |
			  dev_priv->irq_pending_mask);
	}
}