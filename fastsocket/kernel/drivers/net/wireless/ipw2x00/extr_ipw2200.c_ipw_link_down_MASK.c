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
struct ipw_priv {int status; int /*<<< orphan*/  scan_event; int /*<<< orphan*/  request_scan; int /*<<< orphan*/  gather_stats; int /*<<< orphan*/  adhoc_check; int /*<<< orphan*/  request_passive_scan; int /*<<< orphan*/  request_direct_scan; int /*<<< orphan*/  net_dev; } ;

/* Variables and functions */
 int STATUS_EXIT_PENDING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ipw_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct ipw_priv*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ipw_priv*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct ipw_priv *priv)
{
	FUNC1(priv);
	FUNC3(priv->net_dev);
	FUNC4(priv);

	/* Cancel any queued work ... */
	FUNC0(&priv->request_scan);
	FUNC0(&priv->request_direct_scan);
	FUNC0(&priv->request_passive_scan);
	FUNC0(&priv->adhoc_check);
	FUNC0(&priv->gather_stats);

	FUNC2(priv);

	if (!(priv->status & STATUS_EXIT_PENDING)) {
		/* Queue up another scan... */
		FUNC5(&priv->request_scan, 0);
	} else
		FUNC0(&priv->scan_event);
}