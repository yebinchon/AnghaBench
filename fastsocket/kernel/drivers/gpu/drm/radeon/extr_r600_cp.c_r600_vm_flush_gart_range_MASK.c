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
struct drm_device {TYPE_1__* dev_private; } ;
struct TYPE_2__ {int gart_vm_start; int gart_size; } ;
typedef  TYPE_1__ drm_radeon_private_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  R600_VM_CONTEXT0_INVALIDATION_HIGH_ADDR ; 
 int /*<<< orphan*/  R600_VM_CONTEXT0_INVALIDATION_LOW_ADDR ; 
 int /*<<< orphan*/  R600_VM_CONTEXT0_REQUEST_RESPONSE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct drm_device *dev)
{
	drm_radeon_private_t *dev_priv = dev->dev_private;
	u32 resp, countdown = 1000;
	FUNC2(R600_VM_CONTEXT0_INVALIDATION_LOW_ADDR, dev_priv->gart_vm_start >> 12);
	FUNC2(R600_VM_CONTEXT0_INVALIDATION_HIGH_ADDR, (dev_priv->gart_vm_start + dev_priv->gart_size - 1) >> 12);
	FUNC2(R600_VM_CONTEXT0_REQUEST_RESPONSE, 2);

	do {
		resp = FUNC1(R600_VM_CONTEXT0_REQUEST_RESPONSE);
		countdown--;
		FUNC0(1);
	} while (((resp & 0xf0) == 0) && countdown);
}