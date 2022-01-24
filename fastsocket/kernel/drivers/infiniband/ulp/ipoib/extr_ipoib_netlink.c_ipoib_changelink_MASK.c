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
typedef  scalar_t__ u16 ;
struct nlattr {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 size_t IFLA_IPOIB_MODE ; 
 size_t IFLA_IPOIB_UMCAST ; 
 scalar_t__ IPOIB_MODE_CONNECTED ; 
 scalar_t__ IPOIB_MODE_DATAGRAM ; 
 int FUNC0 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,scalar_t__) ; 
 scalar_t__ FUNC2 (struct nlattr*) ; 

__attribute__((used)) static int FUNC3(struct net_device *dev,
			    struct nlattr *tb[], struct nlattr *data[])
{
	u16 mode, umcast;
	int ret = 0;

	if (data[IFLA_IPOIB_MODE]) {
		mode  = FUNC2(data[IFLA_IPOIB_MODE]);
		if (mode == IPOIB_MODE_DATAGRAM)
			ret = FUNC0(dev, "datagram\n");
		else if (mode == IPOIB_MODE_CONNECTED)
			ret = FUNC0(dev, "connected\n");
		else
			ret = -EINVAL;

		if (ret < 0)
			goto out_err;
	}

	if (data[IFLA_IPOIB_UMCAST]) {
		umcast = FUNC2(data[IFLA_IPOIB_UMCAST]);
		FUNC1(dev, umcast);
	}

out_err:
	return ret;
}