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
struct ibmvfc_host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DID_ERROR ; 
 int /*<<< orphan*/  IBMVFC_HOST_ACTION_RESET ; 
 int /*<<< orphan*/  IBMVFC_LINK_DOWN ; 
 int /*<<< orphan*/  FUNC0 (struct ibmvfc_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ibmvfc_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ibmvfc_host*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct ibmvfc_host *vhost)
{
	FUNC1(vhost, DID_ERROR);
	FUNC0(vhost, IBMVFC_LINK_DOWN);
	FUNC2(vhost, IBMVFC_HOST_ACTION_RESET);
}