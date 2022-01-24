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
struct zfcp_qdio {int /*<<< orphan*/  req_q_full; struct zfcp_adapter* adapter; int /*<<< orphan*/  req_q_lock; int /*<<< orphan*/  req_q_wq; } ;
struct zfcp_adapter {int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int EIO ; 
 int HZ ; 
 int ZFCP_STATUS_ADAPTER_QDIOUP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 long FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct zfcp_adapter*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct zfcp_qdio*) ; 

__attribute__((used)) static int FUNC5(struct zfcp_qdio *qdio)
{
	struct zfcp_adapter *adapter = qdio->adapter;
	long ret;

	ret = FUNC2(qdio->req_q_wq,
		       FUNC4(qdio), qdio->req_q_lock, 5 * HZ);

	if (!(FUNC1(&qdio->adapter->status) & ZFCP_STATUS_ADAPTER_QDIOUP))
		return -EIO;

	if (ret > 0)
		return 0;

	if (!ret) {
		FUNC0(&qdio->req_q_full);
		/* assume hanging outbound queue, try queue recovery */
		FUNC3(adapter, 0, "fsrsg_1", NULL);
	}

	return -EIO;
}