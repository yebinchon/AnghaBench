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
struct net_device {int dummy; } ;
struct bdx_priv {int /*<<< orphan*/  nic; int /*<<< orphan*/  napi; int /*<<< orphan*/  rxf_fifo0; int /*<<< orphan*/  ndev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENTER ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int FUNC2 (struct bdx_priv*) ; 
 int FUNC3 (struct bdx_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct bdx_priv*) ; 
 int /*<<< orphan*/  FUNC5 (struct bdx_priv*,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct bdx_priv*) ; 
 int FUNC7 (struct bdx_priv*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct bdx_priv* FUNC9 (struct net_device*) ; 
 scalar_t__ FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct net_device *ndev)
{
	struct bdx_priv *priv;
	int rc;

	ENTER;
	priv = FUNC9(ndev);
	FUNC4(priv);
	if (FUNC10(ndev))
		FUNC11(priv->ndev);

	if ((rc = FUNC7(priv)))
		goto err;

	if ((rc = FUNC6(priv)))
		goto err;

	if ((rc = FUNC2(priv)))
		goto err;

	FUNC5(priv, &priv->rxf_fifo0);

	if ((rc = FUNC3(priv)))
		goto err;

	FUNC8(&priv->napi);

	FUNC12(priv->nic);

	FUNC0(0);

err:
	FUNC1(ndev);
	FUNC0(rc);
}