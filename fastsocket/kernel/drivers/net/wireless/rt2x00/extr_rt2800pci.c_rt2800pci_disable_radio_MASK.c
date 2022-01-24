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
struct rt2x00_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PWR_PIN_CFG ; 
 int /*<<< orphan*/  TX_PIN_CFG ; 
 int /*<<< orphan*/  FUNC0 (struct rt2x00_dev*) ; 
 scalar_t__ FUNC1 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct rt2x00_dev *rt2x00dev)
{
	if (FUNC1(rt2x00dev)) {
		FUNC0(rt2x00dev);
		FUNC2(rt2x00dev, PWR_PIN_CFG, 0);
		FUNC2(rt2x00dev, TX_PIN_CFG, 0);
	}
}