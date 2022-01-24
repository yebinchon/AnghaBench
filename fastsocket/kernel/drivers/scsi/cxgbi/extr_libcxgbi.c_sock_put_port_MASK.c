#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ sin_port; } ;
struct cxgbi_sock {size_t port_id; TYPE_1__ saddr; struct cxgbi_device* cdev; } ;
struct cxgbi_ports_map {int sport_base; int max_connect; int /*<<< orphan*/  lock; int /*<<< orphan*/  used; int /*<<< orphan*/ ** port_csk; } ;
struct cxgbi_device {TYPE_2__** ports; struct cxgbi_ports_map pmap; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int CXGBI_DBG_SOCK ; 
 int /*<<< orphan*/  FUNC0 (struct cxgbi_sock*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,struct cxgbi_device*,size_t,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct cxgbi_device*,size_t,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct cxgbi_sock *csk)
{
	struct cxgbi_device *cdev = csk->cdev;
	struct cxgbi_ports_map *pmap = &cdev->pmap;

	if (csk->saddr.sin_port) {
		int idx = FUNC2(csk->saddr.sin_port) - pmap->sport_base;

		csk->saddr.sin_port = 0;
		if (idx < 0 || idx >= pmap->max_connect) {
			FUNC3("cdev 0x%p, p#%u %s, port %u OOR.\n",
				cdev, csk->port_id,
				cdev->ports[csk->port_id]->name,
				FUNC2(csk->saddr.sin_port));
			return;
		}

		FUNC4(&pmap->lock);
		pmap->port_csk[idx] = NULL;
		pmap->used--;
		FUNC5(&pmap->lock);

		FUNC1(1 << CXGBI_DBG_SOCK,
			"cdev 0x%p, p#%u %s, release %u.\n",
			cdev, csk->port_id, cdev->ports[csk->port_id]->name,
			pmap->sport_base + idx);

		FUNC0(csk);
	}
}