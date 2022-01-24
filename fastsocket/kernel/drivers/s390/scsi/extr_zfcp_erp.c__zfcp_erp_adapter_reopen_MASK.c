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
struct zfcp_adapter {int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  ZFCP_ERP_ACTION_REOPEN_ADAPTER ; 
 int ZFCP_STATUS_COMMON_ERP_FAILED ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct zfcp_adapter*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,void*) ; 
 int /*<<< orphan*/  FUNC2 (struct zfcp_adapter*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct zfcp_adapter*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct zfcp_adapter*) ; 

__attribute__((used)) static int FUNC5(struct zfcp_adapter *adapter,
				    int clear_mask, char *id, void *ref)
{
	FUNC2(adapter, clear_mask);
	FUNC4(adapter);

	/* ensure propagation of failed status to new devices */
	if (FUNC0(&adapter->status) & ZFCP_STATUS_COMMON_ERP_FAILED) {
		FUNC3(adapter, "erareo1", NULL);
		return -EIO;
	}
	return FUNC1(ZFCP_ERP_ACTION_REOPEN_ADAPTER,
				       adapter, NULL, NULL, id, ref);
}