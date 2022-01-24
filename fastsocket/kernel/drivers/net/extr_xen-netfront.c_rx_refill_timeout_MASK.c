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
struct netfront_info {int /*<<< orphan*/  napi; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct netfront_info* FUNC1 (struct net_device*) ; 

__attribute__((used)) static void FUNC2(unsigned long data)
{
	struct net_device *dev = (struct net_device *)data;
	struct netfront_info *np = FUNC1(dev);
	FUNC0(&np->napi);
}