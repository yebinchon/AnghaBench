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
typedef  int u32 ;
struct net_device {int* dev_addr; } ;
struct bdx_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENTER ; 
 int /*<<< orphan*/  FUNC1 (struct bdx_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct bdx_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  regUNC_MAC0_A ; 
 int /*<<< orphan*/  regUNC_MAC1_A ; 
 int /*<<< orphan*/  regUNC_MAC2_A ; 

__attribute__((used)) static void FUNC4(struct net_device *ndev, struct bdx_priv *priv)
{
	u32 val;

	ENTER;
	FUNC0("mac0=%x mac1=%x mac2=%x\n",
	    FUNC1(priv, regUNC_MAC0_A),
	    FUNC1(priv, regUNC_MAC1_A), FUNC1(priv, regUNC_MAC2_A));

	val = (ndev->dev_addr[0] << 8) | (ndev->dev_addr[1]);
	FUNC3(priv, regUNC_MAC2_A, val);
	val = (ndev->dev_addr[2] << 8) | (ndev->dev_addr[3]);
	FUNC3(priv, regUNC_MAC1_A, val);
	val = (ndev->dev_addr[4] << 8) | (ndev->dev_addr[5]);
	FUNC3(priv, regUNC_MAC0_A, val);

	FUNC0("mac0=%x mac1=%x mac2=%x\n",
	    FUNC1(priv, regUNC_MAC0_A),
	    FUNC1(priv, regUNC_MAC1_A), FUNC1(priv, regUNC_MAC2_A));
	FUNC2();
}