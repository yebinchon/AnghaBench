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
typedef  int u32 ;
struct drm_device {scalar_t__ dev_private; } ;
struct TYPE_2__ {int irq_enable_mask; } ;
typedef  TYPE_1__ drm_via_private_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int VIA_IRQ_VBLANK_ENABLE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  VIA_REG_INTERRUPT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

void FUNC5(struct drm_device *dev)
{
	drm_via_private_t *dev_priv = (drm_via_private_t *) dev->dev_private;
	u32 status;

	FUNC0("\n");
	if (dev_priv) {

		/* Some more magic, oh for some data sheets ! */

		FUNC4(0x83d4, 0x11);
		FUNC4(0x83d5, FUNC2(0x83d5) & ~0x30);

		status = FUNC1(VIA_REG_INTERRUPT);
		FUNC3(VIA_REG_INTERRUPT, status &
			  ~(VIA_IRQ_VBLANK_ENABLE | dev_priv->irq_enable_mask));
	}
}