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
 int /*<<< orphan*/  FUNC0 (struct ibmvfc_host*,char*) ; 
 int FUNC1 (struct ibmvfc_host*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct ibmvfc_host *vhost)
{
	FUNC0(vhost, "Sending CRQ init complete\n");
	return FUNC1(vhost, 0xC002000000000000LL, 0);
}