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
struct ql_adapter {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 struct ql_adapter* FUNC0 (struct net_device*) ; 
 int FUNC1 (struct ql_adapter*) ; 
 int FUNC2 (struct ql_adapter*) ; 
 int FUNC3 (struct ql_adapter*) ; 
 int FUNC4 (struct ql_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct ql_adapter*) ; 

__attribute__((used)) static int FUNC6(struct net_device *ndev)
{
	int err = 0;
	struct ql_adapter *qdev = FUNC0(ndev);

	err = FUNC1(qdev);
	if (err)
		return err;

	err = FUNC3(qdev);
	if (err)
		return err;

	err = FUNC4(qdev);
	if (err)
		goto error_up;

	err = FUNC2(qdev);
	if (err)
		goto error_up;

	return err;

error_up:
	FUNC5(qdev);
	return err;
}