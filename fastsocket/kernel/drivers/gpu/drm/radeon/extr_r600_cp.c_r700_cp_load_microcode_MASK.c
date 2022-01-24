#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_2__* me_fw; TYPE_1__* pfp_fw; } ;
typedef  TYPE_3__ drm_radeon_private_t ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_7__ {scalar_t__ data; } ;
struct TYPE_6__ {scalar_t__ data; } ;

/* Variables and functions */
 int R600_BUF_SWAP_32BIT ; 
 int /*<<< orphan*/  R600_CP_ME_RAM_DATA ; 
 int /*<<< orphan*/  R600_CP_ME_RAM_RADDR ; 
 int /*<<< orphan*/  R600_CP_ME_RAM_WADDR ; 
 int /*<<< orphan*/  R600_CP_PFP_UCODE_ADDR ; 
 int /*<<< orphan*/  R600_CP_PFP_UCODE_DATA ; 
 int /*<<< orphan*/  R600_CP_RB_CNTL ; 
 int /*<<< orphan*/  R600_GRBM_SOFT_RESET ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int R600_RB_NO_UPDATE ; 
 int R600_SOFT_RESET_CP ; 
 int R700_PFP_UCODE_SIZE ; 
 int R700_PM4_UCODE_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC7(drm_radeon_private_t *dev_priv)
{
	const __be32 *fw_data;
	int i;

	if (!dev_priv->me_fw || !dev_priv->pfp_fw)
		return;

	FUNC6(dev_priv);

	FUNC3(R600_CP_RB_CNTL,
#ifdef __BIG_ENDIAN
		     R600_BUF_SWAP_32BIT |
#endif
		     R600_RB_NO_UPDATE |
		     FUNC0(15) |
		     FUNC1(3));

	FUNC3(R600_GRBM_SOFT_RESET, R600_SOFT_RESET_CP);
	FUNC2(R600_GRBM_SOFT_RESET);
	FUNC5(15);
	FUNC3(R600_GRBM_SOFT_RESET, 0);

	fw_data = (const __be32 *)dev_priv->pfp_fw->data;
	FUNC3(R600_CP_PFP_UCODE_ADDR, 0);
	for (i = 0; i < R700_PFP_UCODE_SIZE; i++)
		FUNC3(R600_CP_PFP_UCODE_DATA, FUNC4(fw_data++));
	FUNC3(R600_CP_PFP_UCODE_ADDR, 0);

	fw_data = (const __be32 *)dev_priv->me_fw->data;
	FUNC3(R600_CP_ME_RAM_WADDR, 0);
	for (i = 0; i < R700_PM4_UCODE_SIZE; i++)
		FUNC3(R600_CP_ME_RAM_DATA, FUNC4(fw_data++));
	FUNC3(R600_CP_ME_RAM_WADDR, 0);

	FUNC3(R600_CP_PFP_UCODE_ADDR, 0);
	FUNC3(R600_CP_ME_RAM_WADDR, 0);
	FUNC3(R600_CP_ME_RAM_RADDR, 0);

}