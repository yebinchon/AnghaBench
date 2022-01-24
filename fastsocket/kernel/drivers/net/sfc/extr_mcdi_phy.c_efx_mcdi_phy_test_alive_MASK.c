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
typedef  int /*<<< orphan*/  u8 ;
struct efx_nic {int dummy; } ;
typedef  int /*<<< orphan*/  outbuf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  GET_PHY_STATE_OUT_STATE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MC_CMD_GET_PHY_STATE ; 
 scalar_t__ MC_CMD_GET_PHY_STATE_IN_LEN ; 
 int MC_CMD_GET_PHY_STATE_OUT_LEN ; 
 scalar_t__ MC_CMD_PHY_STATE_OK ; 
 int FUNC2 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,size_t*) ; 

__attribute__((used)) static int FUNC3(struct efx_nic *efx)
{
	u8 outbuf[MC_CMD_GET_PHY_STATE_OUT_LEN];
	size_t outlen;
	int rc;

	FUNC0(MC_CMD_GET_PHY_STATE_IN_LEN != 0);

	rc = FUNC2(efx, MC_CMD_GET_PHY_STATE, NULL, 0,
			  outbuf, sizeof(outbuf), &outlen);
	if (rc)
		return rc;

	if (outlen < MC_CMD_GET_PHY_STATE_OUT_LEN)
		return -EIO;
	if (FUNC1(outbuf, GET_PHY_STATE_OUT_STATE) != MC_CMD_PHY_STATE_OK)
		return -EINVAL;

	return 0;
}