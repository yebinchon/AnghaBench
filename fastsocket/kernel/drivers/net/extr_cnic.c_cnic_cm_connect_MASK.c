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
struct cnic_sockaddr {int dummy; } ;
struct cnic_sock {int /*<<< orphan*/  flags; TYPE_1__* dev; } ;
struct cnic_local {TYPE_2__* ethdev; } ;
struct TYPE_4__ {int drv_state; } ;
struct TYPE_3__ {struct cnic_local* cnic_priv; } ;

/* Variables and functions */
 int CNIC_DRV_STATE_NO_ISCSI ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  SK_F_CONNECT_START ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct cnic_sock*,struct cnic_sockaddr*) ; 
 int /*<<< orphan*/  FUNC2 (struct cnic_sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct cnic_sock*) ; 
 int FUNC4 (struct cnic_sock*,struct cnic_sockaddr*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct cnic_sock *csk, struct cnic_sockaddr *saddr)
{
	struct cnic_local *cp = csk->dev->cnic_priv;
	int err = 0;

	if (cp->ethdev->drv_state & CNIC_DRV_STATE_NO_ISCSI)
		return -EOPNOTSUPP;

	if (!FUNC2(csk))
		return -EINVAL;

	if (FUNC5(SK_F_CONNECT_START, &csk->flags))
		return -EINVAL;

	FUNC3(csk);

	err = FUNC1(csk, saddr);
	if (err)
		goto err_out;

	err = FUNC4(csk, saddr);
	if (!err)
		return 0;

err_out:
	FUNC0(SK_F_CONNECT_START, &csk->flags);
	return err;
}