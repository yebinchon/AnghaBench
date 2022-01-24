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
struct sockaddr_in6 {int dummy; } ;
struct sockaddr_in {scalar_t__ sin_family; } ;
struct net_device {int dummy; } ;
struct dst_entry {int /*<<< orphan*/  dev; } ;
struct cnic_dev {int dummy; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 int ENETUNREACH ; 
 struct cnic_dev* FUNC0 (struct net_device*) ; 
 int FUNC1 (struct sockaddr_in*,struct dst_entry**) ; 
 int FUNC2 (struct sockaddr_in6*,struct dst_entry**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct net_device**) ; 
 int /*<<< orphan*/  FUNC4 (struct cnic_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct dst_entry*) ; 

__attribute__((used)) static struct cnic_dev *FUNC6(struct sockaddr_in *dst_addr,
					   int ulp_type)
{
	struct cnic_dev *dev = NULL;
	struct dst_entry *dst;
	struct net_device *netdev = NULL;
	int err = -ENETUNREACH;

	if (dst_addr->sin_family == AF_INET)
		err = FUNC1(dst_addr, &dst);
	else if (dst_addr->sin_family == AF_INET6) {
		struct sockaddr_in6 *dst_addr6 =
			(struct sockaddr_in6 *) dst_addr;

		err = FUNC2(dst_addr6, &dst);
	} else
		return NULL;

	if (err)
		return NULL;

	if (!dst->dev)
		goto done;

	FUNC3(dst->dev, &netdev);

	dev = FUNC0(netdev);

done:
	FUNC5(dst);
	if (dev)
		FUNC4(dev);
	return dev;
}