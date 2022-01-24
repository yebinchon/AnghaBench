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
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_MC5_DB_DBGI_REQ_CMD ; 
 int /*<<< orphan*/  A_MC5_DB_DBGI_RSP_STATUS ; 
 int /*<<< orphan*/  F_DBGIRSPVALID ; 
 int /*<<< orphan*/  MAX_WRITE_ATTEMPTS ; 
 int FUNC0 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct adapter *adapter, u32 cmd)
{
	FUNC1(adapter, A_MC5_DB_DBGI_REQ_CMD, cmd);
	return FUNC0(adapter, A_MC5_DB_DBGI_RSP_STATUS,
			       F_DBGIRSPVALID, 1, MAX_WRITE_ATTEMPTS, 1);
}