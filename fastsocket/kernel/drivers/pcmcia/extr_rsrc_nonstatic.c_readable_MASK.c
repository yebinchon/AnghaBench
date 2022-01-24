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
struct resource {int /*<<< orphan*/  start; } ;
struct TYPE_2__ {struct resource* res; } ;
struct pcmcia_socket {TYPE_1__ cis_mem; int /*<<< orphan*/ * cis_virt; int /*<<< orphan*/  map_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pcmcia_socket*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct pcmcia_socket*,unsigned int*) ; 

__attribute__((used)) static int FUNC4(struct pcmcia_socket *s, struct resource *res,
		    unsigned int *count)
{
	int ret = -1;

	s->cis_mem.res = res;
	s->cis_virt = FUNC1(res->start, s->map_size);
	if (s->cis_virt) {
		ret = FUNC3(s, count);
		/* invalidate mapping and CIS cache */
		FUNC2(s->cis_virt);
		s->cis_virt = NULL;
		FUNC0(s);
	}
	s->cis_mem.res = NULL;
	if ((ret != 0) || (*count == 0))
		return 0;
	return 1;
}