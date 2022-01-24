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
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_802_11_PS_MODE ; 
 int /*<<< orphan*/  CMD_SUBCMD_EXIT_PS ; 
 int /*<<< orphan*/  LBS802_11POWERMODECAM ; 
 int /*<<< orphan*/  LBS_DEB_HOST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct lbs_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC4(struct lbs_private *priv, int wait_option)
{
	__le32 Localpsmode;

	FUNC1(LBS_DEB_HOST);

	Localpsmode = FUNC0(LBS802_11POWERMODECAM);

	FUNC3(priv, CMD_802_11_PS_MODE,
			      CMD_SUBCMD_EXIT_PS,
			      wait_option, 0, &Localpsmode);

	FUNC2(LBS_DEB_HOST);
}