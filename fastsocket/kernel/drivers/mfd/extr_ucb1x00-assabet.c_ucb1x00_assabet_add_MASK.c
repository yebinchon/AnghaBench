#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ucb1x00_dev {TYPE_1__* ucb; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  dev_attr_batt_temp ; 
 int /*<<< orphan*/  dev_attr_vbatt ; 
 int /*<<< orphan*/  dev_attr_vcharger ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC1(struct ucb1x00_dev *dev)
{
	FUNC0(&dev->ucb->dev, &dev_attr_vbatt);
	FUNC0(&dev->ucb->dev, &dev_attr_vcharger);
	FUNC0(&dev->ucb->dev, &dev_attr_batt_temp);
	return 0;
}