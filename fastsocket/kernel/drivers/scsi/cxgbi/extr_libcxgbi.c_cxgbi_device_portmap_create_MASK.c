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
struct cxgbi_sock {int dummy; } ;
struct cxgbi_ports_map {unsigned int max_connect; unsigned int sport_base; int /*<<< orphan*/  lock; int /*<<< orphan*/  port_csk; } ;
struct cxgbi_device {struct cxgbi_ports_map pmap; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct cxgbi_device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct cxgbi_device *cdev, unsigned int base,
				unsigned int max_conn)
{
	struct cxgbi_ports_map *pmap = &cdev->pmap;

	pmap->port_csk = FUNC0(max_conn *
					     sizeof(struct cxgbi_sock *),
					     GFP_KERNEL);
	if (!pmap->port_csk) {
		FUNC1("cdev 0x%p, portmap OOM %u.\n", cdev, max_conn);
		return -ENOMEM;
	}

	pmap->max_connect = max_conn;
	pmap->sport_base = base;
	FUNC2(&pmap->lock);
	return 0;
}