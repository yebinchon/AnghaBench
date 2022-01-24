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
typedef  int /*<<< orphan*/  u32 ;
struct i2c_adapter {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  func ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_GET_FUNC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct i2c_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static u32 FUNC3(struct i2c_adapter *adapter)
{
	__le32 func;

	/* get functionality from adapter */
	if (FUNC2(adapter, CMD_GET_FUNC, 0, 0, &func, sizeof(func)) !=
	    sizeof(func)) {
		FUNC0(&adapter->dev, "failure reading functionality\n");
		return 0;
	}

	return FUNC1(func);
}