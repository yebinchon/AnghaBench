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
struct zfcp_erp_action {struct zfcp_adapter* adapter; } ;
struct zfcp_adapter {int /*<<< orphan*/  status; int /*<<< orphan*/  gs; scalar_t__ fsf_req_seq_no; int /*<<< orphan*/  qdio; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZFCP_CLEAR ; 
 int ZFCP_STATUS_ADAPTER_LINK_UNPLUGGED ; 
 int ZFCP_STATUS_ADAPTER_XCONFIG_OK ; 
 int /*<<< orphan*/  ZFCP_STATUS_COMMON_OPEN ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct zfcp_adapter*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct zfcp_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct zfcp_erp_action *act)
{
	struct zfcp_adapter *adapter = act->adapter;

	/* close queues to ensure that buffers are not accessed by adapter */
	FUNC4(adapter->qdio);
	FUNC3(adapter);
	adapter->fsf_req_seq_no = 0;
	FUNC2(adapter->gs);
	/* all ports and units are closed */
	FUNC1(adapter, "erascl1", NULL,
				       ZFCP_STATUS_COMMON_OPEN, ZFCP_CLEAR);

	FUNC0(ZFCP_STATUS_ADAPTER_XCONFIG_OK |
			  ZFCP_STATUS_ADAPTER_LINK_UNPLUGGED, &adapter->status);
}