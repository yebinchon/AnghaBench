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
struct tsi108_prv_data {int /*<<< orphan*/  timer; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ CHECK_PHY_INTERVAL ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 struct tsi108_prv_data* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 

__attribute__((used)) static void FUNC4(unsigned long dev_ptr)
{
	struct net_device *dev = (struct net_device *)dev_ptr;
	struct tsi108_prv_data *data = FUNC1(dev);

	FUNC2(dev);
	FUNC3(dev);
	FUNC0(&data->timer, jiffies + CHECK_PHY_INTERVAL);
}