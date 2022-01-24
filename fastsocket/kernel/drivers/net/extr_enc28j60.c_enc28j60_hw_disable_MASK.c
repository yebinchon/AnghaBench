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
struct enc28j60_net {int hw_enable; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  ECON1 ; 
 int /*<<< orphan*/  ECON1_RXEN ; 
 int /*<<< orphan*/  EIE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct enc28j60_net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct enc28j60_net*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct enc28j60_net *priv)
{
	FUNC0(&priv->lock);
	/* disable interrutps and packet reception */
	FUNC3(priv, EIE, 0x00);
	FUNC2(priv, ECON1, ECON1_RXEN);
	priv->hw_enable = false;
	FUNC1(&priv->lock);
}