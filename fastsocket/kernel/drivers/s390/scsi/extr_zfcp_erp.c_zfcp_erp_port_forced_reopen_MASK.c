#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct zfcp_port {struct zfcp_adapter* adapter; } ;
struct zfcp_adapter {int /*<<< orphan*/  erp_lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  config_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct zfcp_port*,int,char*,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__ zfcp_data ; 

void FUNC5(struct zfcp_port *port, int clear, char *id,
				 void *ref)
{
	unsigned long flags;
	struct zfcp_adapter *adapter = port->adapter;

	FUNC1(&zfcp_data.config_lock, flags);
	FUNC3(&adapter->erp_lock);
	FUNC0(port, clear, id, ref);
	FUNC4(&adapter->erp_lock);
	FUNC2(&zfcp_data.config_lock, flags);
}