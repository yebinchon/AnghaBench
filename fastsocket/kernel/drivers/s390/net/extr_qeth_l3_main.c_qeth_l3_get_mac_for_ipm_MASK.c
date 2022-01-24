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
struct net_device {scalar_t__ type; } ;
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
 scalar_t__ ARPHRD_IEEE802_TR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC2(__u32 ipm, char *mac,
				struct net_device *dev)
{
	if (dev->type == ARPHRD_IEEE802_TR)
		FUNC1(ipm, mac);
	else
		FUNC0(ipm, mac);
}