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
struct ipw_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CBD_RESET_REG_PRINCETON_RESET ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  IPW_RESET_REG ; 
 int /*<<< orphan*/  IPW_RESET_REG_MASTER_DISABLED ; 
 int /*<<< orphan*/  IPW_RESET_REG_STOP_MASTER ; 
 int FUNC1 (struct ipw_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ipw_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ipw_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct ipw_priv *priv)
{
	int rc = 0;

	/* stop */
	FUNC3(priv, IPW_RESET_REG, IPW_RESET_REG_STOP_MASTER);

	rc = FUNC1(priv, IPW_RESET_REG,
			  IPW_RESET_REG_MASTER_DISABLED, 500);
	if (rc < 0) {
		FUNC0("wait for reg master disabled failed after 500ms\n");
		return rc;
	}

	FUNC2(priv, IPW_RESET_REG, CBD_RESET_REG_PRINCETON_RESET);

	return rc;
}