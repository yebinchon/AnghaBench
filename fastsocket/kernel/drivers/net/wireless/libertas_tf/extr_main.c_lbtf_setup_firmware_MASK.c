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
struct lbtf_private {int /*<<< orphan*/  current_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  LBTF_DEB_FW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct lbtf_private*) ; 
 int /*<<< orphan*/  FUNC3 (struct lbtf_private*) ; 
 int FUNC4 (struct lbtf_private*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct lbtf_private *priv)
{
	int ret = -1;

	FUNC0(LBTF_DEB_FW);
	/*
	 * Read priv address from HW
	 */
	FUNC5(priv->current_addr, 0xff, ETH_ALEN);
	ret = FUNC4(priv);
	if (ret) {
		ret = -1;
		goto done;
	}

	FUNC2(priv);
	FUNC3(priv);

	ret = 0;
done:
	FUNC1(LBTF_DEB_FW, "ret: %d", ret);
	return ret;
}