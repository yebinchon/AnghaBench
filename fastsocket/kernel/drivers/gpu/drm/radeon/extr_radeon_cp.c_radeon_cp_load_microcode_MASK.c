#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* me_fw; } ;
typedef  TYPE_2__ drm_radeon_private_t ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_5__ {int size; int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 int /*<<< orphan*/  RADEON_CP_ME_RAM_ADDR ; 
 int /*<<< orphan*/  RADEON_CP_ME_RAM_DATAH ; 
 int /*<<< orphan*/  RADEON_CP_ME_RAM_DATAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC3(drm_radeon_private_t *dev_priv)
{
	const __be32 *fw_data;
	int i, size;

	FUNC2(dev_priv);

	if (dev_priv->me_fw) {
		size = dev_priv->me_fw->size / 4;
		fw_data = (const __be32 *)&dev_priv->me_fw->data[0];
		FUNC0(RADEON_CP_ME_RAM_ADDR, 0);
		for (i = 0; i < size; i += 2) {
			FUNC0(RADEON_CP_ME_RAM_DATAH,
				     FUNC1(&fw_data[i]));
			FUNC0(RADEON_CP_ME_RAM_DATAL,
				     FUNC1(&fw_data[i + 1]));
		}
	}
}