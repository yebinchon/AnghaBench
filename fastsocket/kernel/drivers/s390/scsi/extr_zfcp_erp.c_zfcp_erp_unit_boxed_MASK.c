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
struct zfcp_unit {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZFCP_SET ; 
 int /*<<< orphan*/  ZFCP_STATUS_COMMON_ACCESS_BOXED ; 
 int /*<<< orphan*/  ZFCP_STATUS_COMMON_ERP_FAILED ; 
 int /*<<< orphan*/  FUNC0 (struct zfcp_unit*,char*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct zfcp_unit*,int /*<<< orphan*/ ,char*,void*) ; 

void FUNC2(struct zfcp_unit *unit, char *id, void *ref)
{
	FUNC0(unit, id, ref,
				    ZFCP_STATUS_COMMON_ACCESS_BOXED, ZFCP_SET);
	FUNC1(unit, ZFCP_STATUS_COMMON_ERP_FAILED, id, ref);
}