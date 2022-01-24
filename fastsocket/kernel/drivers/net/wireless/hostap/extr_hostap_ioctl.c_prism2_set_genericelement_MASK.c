#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct net_device {int dummy; } ;
struct hostap_interface {TYPE_2__* local; } ;
struct TYPE_4__ {size_t generic_elem_len; int /*<<< orphan*/  dev; TYPE_1__* func; int /*<<< orphan*/ * generic_elem; } ;
typedef  TYPE_2__ local_info_t ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_3__ {int (* set_rid ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ;} ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HFA384X_RID_GENERICELEMENT ; 
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 struct hostap_interface* FUNC4 (struct net_device*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev, u8 *elem,
				     size_t len)
{
	struct hostap_interface *iface = FUNC4(dev);
	local_info_t *local = iface->local;
	u8 *buf;

	/*
	 * Add 16-bit length in the beginning of the buffer because Prism2 RID
	 * includes it.
	 */
	buf = FUNC2(len + 2, GFP_KERNEL);
	if (buf == NULL)
		return -ENOMEM;

	*((__le16 *) buf) = FUNC0(len);
	FUNC3(buf + 2, elem, len);

	FUNC1(local->generic_elem);
	local->generic_elem = buf;
	local->generic_elem_len = len + 2;

	return local->func->set_rid(local->dev, HFA384X_RID_GENERICELEMENT,
				    buf, len + 2);
}