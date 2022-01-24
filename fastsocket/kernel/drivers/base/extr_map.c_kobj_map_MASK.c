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
struct probe {int (* lock ) (scalar_t__,void*) ;unsigned long range; struct probe* next; void* data; scalar_t__ dev; int /*<<< orphan*/ * get; struct module* owner; } ;
struct module {int dummy; } ;
struct kobj_map {int /*<<< orphan*/  lock; struct probe** probes; } ;
typedef  int /*<<< orphan*/  kobj_probe_t ;
typedef  scalar_t__ dev_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (scalar_t__) ; 
 struct probe* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(struct kobj_map *domain, dev_t dev, unsigned long range,
	     struct module *module, kobj_probe_t *probe,
	     int (*lock)(dev_t, void *), void *data)
{
	unsigned n = FUNC0(dev + range - 1) - FUNC0(dev) + 1;
	unsigned index = FUNC0(dev);
	unsigned i;
	struct probe *p;

	if (n > 255)
		n = 255;

	p = FUNC1(sizeof(struct probe) * n, GFP_KERNEL);

	if (p == NULL)
		return -ENOMEM;

	for (i = 0; i < n; i++, p++) {
		p->owner = module;
		p->get = probe;
		p->lock = lock;
		p->dev = dev;
		p->range = range;
		p->data = data;
	}
	FUNC2(domain->lock);
	for (i = 0, p -= n; i < n; i++, p++, index++) {
		struct probe **s = &domain->probes[index % 255];
		while (*s && (*s)->range < range)
			s = &(*s)->next;
		p->next = *s;
		*s = p;
	}
	FUNC3(domain->lock);
	return 0;
}