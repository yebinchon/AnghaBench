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
struct zfcp_qdio {int /*<<< orphan*/  stat_lock; int /*<<< orphan*/  req_q_lock; struct zfcp_adapter* adapter; } ;
struct zfcp_adapter {struct zfcp_qdio* qdio; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct zfcp_qdio* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct zfcp_qdio*) ; 
 int /*<<< orphan*/  FUNC3 (struct zfcp_qdio*) ; 

int FUNC4(struct zfcp_adapter *adapter)
{
	struct zfcp_qdio *qdio;

	qdio = FUNC0(sizeof(struct zfcp_qdio), GFP_KERNEL);
	if (!qdio)
		return -ENOMEM;

	qdio->adapter = adapter;

	if (FUNC2(qdio)) {
		FUNC3(qdio);
		return -ENOMEM;
	}

	FUNC1(&qdio->req_q_lock);
	FUNC1(&qdio->stat_lock);

	adapter->qdio = qdio;
	return 0;
}