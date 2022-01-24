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
struct ipoib_dev_priv {scalar_t__ send_wc; int /*<<< orphan*/  dev; int /*<<< orphan*/  send_cq; } ;

/* Variables and functions */
 int MAX_SEND_CQE ; 
 int FUNC0 (int /*<<< orphan*/ ,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct ipoib_dev_priv *priv)
{
	int n, i;

	n = FUNC0(priv->send_cq, MAX_SEND_CQE, priv->send_wc);
	for (i = 0; i < n; ++i)
		FUNC1(priv->dev, priv->send_wc + i);

	return n == MAX_SEND_CQE;
}