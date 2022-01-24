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
struct devres {void* data; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  int /*<<< orphan*/  dr_release_t ;

/* Variables and functions */
 struct devres* FUNC0 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 

void * FUNC2(dr_release_t release, size_t size, gfp_t gfp)
{
	struct devres *dr;

	dr = FUNC0(release, size, gfp);
	if (FUNC1(!dr))
		return NULL;
	return dr->data;
}