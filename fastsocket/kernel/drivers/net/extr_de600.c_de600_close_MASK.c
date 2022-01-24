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

/* Variables and functions */
 int /*<<< orphan*/  DE600_IRQ ; 
 int /*<<< orphan*/  RESET ; 
 int /*<<< orphan*/  STOP_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct net_device*) ; 
 scalar_t__ rx_page ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static int FUNC4(struct net_device *dev)
{
	FUNC2();
	rx_page = 0;
	FUNC0(RESET);
	FUNC0(STOP_RESET);
	FUNC0(0);
	FUNC3();
	FUNC1(DE600_IRQ, dev);
	return 0;
}