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
struct cxgbi_sock {int /*<<< orphan*/  lock; } ;
struct cxgbi_ports_map {int max_connect; struct cxgbi_sock** port_csk; } ;
struct cxgbi_device {struct cxgbi_ports_map pmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTPF_OFFLOAD_DOWN ; 
 int CXGBI_DBG_SOCK ; 
 int /*<<< orphan*/  FUNC0 (struct cxgbi_sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct cxgbi_sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct cxgbi_sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,struct cxgbi_sock*,struct cxgbi_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct cxgbi_device *cdev)
{
	struct cxgbi_ports_map *pmap = &cdev->pmap;
	struct cxgbi_sock *csk;
	int i;

	for (i = 0; i < pmap->max_connect; i++) {
		if (pmap->port_csk[i]) {
			csk = pmap->port_csk[i];
			pmap->port_csk[i] = NULL;
			FUNC3(1 << CXGBI_DBG_SOCK,
				"csk 0x%p, cdev 0x%p, offload down.\n",
				csk, cdev);
			FUNC4(&csk->lock);
			FUNC2(csk, CTPF_OFFLOAD_DOWN);
			FUNC0(csk);
			FUNC5(&csk->lock);
			FUNC1(csk);
		}
	}
}