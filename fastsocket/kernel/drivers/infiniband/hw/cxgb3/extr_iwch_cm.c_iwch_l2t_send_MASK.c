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
struct l2t_entry {int dummy; } ;
struct cxio_rdev {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ FUNC0 (struct cxio_rdev*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int FUNC2 (struct t3cdev*,struct sk_buff*,struct l2t_entry*) ; 

__attribute__((used)) static int FUNC3(struct t3cdev *tdev, struct sk_buff *skb, struct l2t_entry *l2e)
{
	int	error = 0;
	struct cxio_rdev *rdev;

	rdev = (struct cxio_rdev *)tdev->ulp;
	if (FUNC0(rdev)) {
		FUNC1(skb);
		return -EIO;
	}
	error = FUNC2(tdev, skb, l2e);
	if (error < 0)
		FUNC1(skb);
	return error;
}