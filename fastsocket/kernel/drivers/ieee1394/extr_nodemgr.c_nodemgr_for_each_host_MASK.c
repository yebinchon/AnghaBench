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
struct per_host_parameter {int (* cb ) (struct hpsb_host*,void*) ;void* data; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct per_host_parameter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hpsb_host_class ; 
 int /*<<< orphan*/  per_host ; 

int FUNC1(void *data, int (*cb)(struct hpsb_host *, void *))
{
	struct per_host_parameter p;

	p.cb = cb;
	p.data = data;
	return FUNC0(&hpsb_host_class, NULL, &p, per_host);
}