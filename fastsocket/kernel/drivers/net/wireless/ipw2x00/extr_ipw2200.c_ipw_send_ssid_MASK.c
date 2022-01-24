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
struct ipw_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPW_CMD_SSID ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  IW_ESSID_MAX_SIZE ; 
 int FUNC1 (struct ipw_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct ipw_priv *priv, u8 * ssid, int len)
{
	if (!priv || !ssid) {
		FUNC0("Invalid args\n");
		return -1;
	}

	return FUNC1(priv, IPW_CMD_SSID, FUNC2(len, IW_ESSID_MAX_SIZE),
				ssid);
}