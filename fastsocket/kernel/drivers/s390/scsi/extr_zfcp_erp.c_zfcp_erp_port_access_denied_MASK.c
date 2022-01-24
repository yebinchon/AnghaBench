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
struct zfcp_port {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  config_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZFCP_SET ; 
 int ZFCP_STATUS_COMMON_ACCESS_DENIED ; 
 int ZFCP_STATUS_COMMON_ERP_FAILED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 TYPE_1__ zfcp_data ; 
 int /*<<< orphan*/  FUNC2 (struct zfcp_port*,char*,void*,int,int /*<<< orphan*/ ) ; 

void FUNC3(struct zfcp_port *port, char *id, void *ref)
{
	unsigned long flags;

	FUNC0(&zfcp_data.config_lock, flags);
	FUNC2(port, id, ref,
				    ZFCP_STATUS_COMMON_ERP_FAILED |
				    ZFCP_STATUS_COMMON_ACCESS_DENIED, ZFCP_SET);
	FUNC1(&zfcp_data.config_lock, flags);
}