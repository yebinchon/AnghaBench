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
typedef  int u64 ;
struct ql_adapter {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct ql_adapter*) ; 
 int FUNC1 (struct ql_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct ql_adapter*) ; 

__attribute__((used)) static int FUNC3(struct ql_adapter *qdev, u64 *data)
{
	*data = FUNC1(qdev);
	if (*data)
		goto out;
	*data = FUNC0(qdev);
out:
	FUNC2(qdev);
	return *data;
}