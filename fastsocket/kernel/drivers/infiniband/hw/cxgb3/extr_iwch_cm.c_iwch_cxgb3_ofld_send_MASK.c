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
struct t3cdev {scalar_t__ ulp; } ;
struct sk_buff {int dummy; } ;
struct cxio_rdev {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int FUNC0 (struct t3cdev*,struct sk_buff*) ; 
 scalar_t__ FUNC1 (struct cxio_rdev*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 

int FUNC3(struct t3cdev *tdev, struct sk_buff *skb)
{
	int	error = 0;
	struct cxio_rdev *rdev;

	rdev = (struct cxio_rdev *)tdev->ulp;
	if (FUNC1(rdev)) {
		FUNC2(skb);
		return -EIO;
	}
	error = FUNC0(tdev, skb);
	if (error < 0)
		FUNC2(skb);
	return error;
}