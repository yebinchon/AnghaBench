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
typedef  scalar_t__ u32 ;
struct lbs_private {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  LBS_DEB_CMD ; 
 scalar_t__ MACREG_INT_CODE_MIC_ERR_UNICAST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct lbs_private*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 

__attribute__((used)) static void FUNC6(struct lbs_private *priv, u32 event)
{
	char buf[50];

	FUNC0(LBS_DEB_CMD);
	FUNC3(buf, 0, sizeof(buf));

	FUNC4(buf, "%s", "MLME-MICHAELMICFAILURE.indication ");

	if (event == MACREG_INT_CODE_MIC_ERR_UNICAST) {
		FUNC5(buf, "unicast ");
	} else {
		FUNC5(buf, "multicast ");
	}

	FUNC2(priv, buf);
	FUNC1(LBS_DEB_CMD);
}