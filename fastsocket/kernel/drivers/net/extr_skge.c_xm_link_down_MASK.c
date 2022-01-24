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
struct skge_port {int dummy; } ;
struct skge_hw {struct net_device** dev; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  XM_IMSK ; 
 int /*<<< orphan*/  XM_IMSK_DISABLE ; 
 struct skge_port* FUNC0 (struct net_device*) ; 
 scalar_t__ FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct skge_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct skge_hw*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct skge_hw *hw, int port)
{
	struct net_device *dev = hw->dev[port];
	struct skge_port *skge = FUNC0(dev);

	FUNC3(hw, port, XM_IMSK, XM_IMSK_DISABLE);

	if (FUNC1(dev))
		FUNC2(skge);
}