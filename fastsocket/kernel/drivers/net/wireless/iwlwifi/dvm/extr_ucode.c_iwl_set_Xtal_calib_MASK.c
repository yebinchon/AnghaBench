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
struct iwl_priv {TYPE_1__* nvm_data; } ;
struct iwl_calib_xtal_freq_cmd {void* cap_pin2; void* cap_pin1; int /*<<< orphan*/  hdr; } ;
typedef  int /*<<< orphan*/  cmd ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_2__ {int /*<<< orphan*/ * xtal_calib; } ;

/* Variables and functions */
 int /*<<< orphan*/  IWL_PHY_CALIBRATE_CRYSTAL_FRQ_CMD ; 
 int FUNC0 (struct iwl_priv*,void*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct iwl_priv *priv)
{
	struct iwl_calib_xtal_freq_cmd cmd;
	__le16 *xtal_calib = priv->nvm_data->xtal_calib;

	FUNC1(&cmd.hdr, IWL_PHY_CALIBRATE_CRYSTAL_FRQ_CMD);
	cmd.cap_pin1 = FUNC2(xtal_calib[0]);
	cmd.cap_pin2 = FUNC2(xtal_calib[1]);
	return FUNC0(priv, (void *)&cmd, sizeof(cmd));
}