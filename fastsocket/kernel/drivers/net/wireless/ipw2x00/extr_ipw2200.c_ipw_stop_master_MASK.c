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
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  IPW_RESET_REG ; 
 int /*<<< orphan*/  IPW_RESET_REG_MASTER_DISABLED ; 
 int /*<<< orphan*/  IPW_RESET_REG_STOP_MASTER ; 
 int FUNC3 (struct ipw_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ipw_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct ipw_priv *priv)
{
	int rc;

	FUNC1(">>\n");
	/* stop master. typical delay - 0 */
	FUNC4(priv, IPW_RESET_REG, IPW_RESET_REG_STOP_MASTER);

	/* timeout is in msec, polled in 10-msec quanta */
	rc = FUNC3(priv, IPW_RESET_REG,
			  IPW_RESET_REG_MASTER_DISABLED, 100);
	if (rc < 0) {
		FUNC2("wait for stop master failed after 100ms\n");
		return -1;
	}

	FUNC0("stop master %dms\n", rc);

	return rc;
}