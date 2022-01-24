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
struct hpsb_host {int dummy; } ;
struct eth1394_priv {scalar_t__ iso; int /*<<< orphan*/  local_fifo; } ;
struct eth1394_host_info {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  eth1394_highlevel ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hpsb_host*) ; 
 struct eth1394_host_info* FUNC2 (int /*<<< orphan*/ *,struct hpsb_host*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct hpsb_host*,int /*<<< orphan*/ ) ; 
 struct eth1394_priv* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct hpsb_host *host)
{
	struct eth1394_host_info *hi;
	struct eth1394_priv *priv;

	hi = FUNC2(&eth1394_highlevel, host);
	if (!hi)
		return;
	priv = FUNC5(hi->dev);
	FUNC4(&eth1394_highlevel, host, priv->local_fifo);
	FUNC1(host);
	if (priv->iso)
		FUNC3(priv->iso);
	FUNC6(hi->dev);
	FUNC0(hi->dev);
}