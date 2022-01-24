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
struct pxa_irda {int dummy; } ;
struct platform_device {int dummy; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  pm_message_t ;

/* Variables and functions */
 struct pxa_irda* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (struct net_device*) ; 
 struct net_device* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct pxa_irda*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *_dev, pm_message_t state)
{
	struct net_device *dev = FUNC3(_dev);
	struct pxa_irda *si;

	if (dev && FUNC2(dev)) {
		si = FUNC0(dev);
		FUNC1(dev);
		FUNC4(si);
	}

	return 0;
}