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
struct in_device {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  RT_SCOPE_HOST ; 
 struct in_device* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct in_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static inline __be32 FUNC4(struct net_device *dev, __be32 dst, __be32 local)
{
	struct in_device *in_dev;
	__be32 addr = 0;

	FUNC2();
	in_dev = FUNC0(dev);

	if (in_dev)
		addr = FUNC1(in_dev, dst, local, RT_SCOPE_HOST);

	FUNC3();
	return addr;
}