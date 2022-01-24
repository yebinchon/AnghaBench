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
struct ks8695_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ks8695_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct ks8695_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct ks8695_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct ks8695_priv*) ; 
 struct ks8695_priv* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 

__attribute__((used)) static void
FUNC8(struct net_device *ndev)
{
	struct ks8695_priv *ksp = FUNC5(ndev);

	FUNC7(ndev);
	FUNC3(ksp);

	FUNC1(ksp);

	FUNC4(ksp);

	/* We ignore the return from this since it managed to init
	 * before it probably will be okay to init again.
	 */
	FUNC0(ksp);

	/* Reconfigure promiscuity etc */
	FUNC2(ndev);

	/* And start the TX queue once more */
	FUNC6(ndev);
}