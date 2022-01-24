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
struct lbs_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_802_11_PS_MODE ; 
 int /*<<< orphan*/  CMD_SUBCMD_ENTER_PS ; 
 int /*<<< orphan*/  LBS_DEB_HOST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct lbs_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC3(struct lbs_private *priv, int wait_option)
{
	FUNC0(LBS_DEB_HOST);

	/*
	 * PS is currently supported only in Infrastructure mode
	 * Remove this check if it is to be supported in IBSS mode also
	 */

	FUNC2(priv, CMD_802_11_PS_MODE,
			      CMD_SUBCMD_ENTER_PS, wait_option, 0, NULL);

	FUNC1(LBS_DEB_HOST);
}