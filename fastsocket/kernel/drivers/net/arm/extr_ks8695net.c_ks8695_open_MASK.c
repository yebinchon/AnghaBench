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
struct net_device {int /*<<< orphan*/  dev_addr; } ;
struct ks8695_priv {int dummy; } ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ks8695_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct ks8695_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct ks8695_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct ks8695_priv*) ; 
 struct ks8695_priv* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 

__attribute__((used)) static int
FUNC7(struct net_device *ndev)
{
	struct ks8695_priv *ksp = FUNC5(ndev);
	int ret;

	if (!FUNC0(ndev->dev_addr))
		return -EADDRNOTAVAIL;

	FUNC2(ksp);

	FUNC4(ksp);

	ret = FUNC1(ksp);
	if (ret) {
		FUNC3(ksp);
		return ret;
	}

	FUNC6(ndev);

	return 0;
}