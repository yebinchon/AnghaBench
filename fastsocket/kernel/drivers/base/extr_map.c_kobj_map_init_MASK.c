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
struct probe {int dev; struct mutex* lock; struct probe** probes; int /*<<< orphan*/ * get; int /*<<< orphan*/  range; } ;
struct mutex {int dummy; } ;
struct kobj_map {int dev; struct mutex* lock; struct kobj_map** probes; int /*<<< orphan*/ * get; int /*<<< orphan*/  range; } ;
typedef  int /*<<< orphan*/  kobj_probe_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct probe*) ; 
 struct probe* FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct probe* FUNC2 (int,int /*<<< orphan*/ ) ; 

struct kobj_map *FUNC3(kobj_probe_t *base_probe, struct mutex *lock)
{
	struct kobj_map *p = FUNC1(sizeof(struct kobj_map), GFP_KERNEL);
	struct probe *base = FUNC2(sizeof(*base), GFP_KERNEL);
	int i;

	if ((p == NULL) || (base == NULL)) {
		FUNC0(p);
		FUNC0(base);
		return NULL;
	}

	base->dev = 1;
	base->range = ~0;
	base->get = base_probe;
	for (i = 0; i < 255; i++)
		p->probes[i] = base;
	p->lock = lock;
	return p;
}