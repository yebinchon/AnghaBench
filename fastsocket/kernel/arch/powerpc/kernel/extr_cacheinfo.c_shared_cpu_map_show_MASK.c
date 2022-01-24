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
struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
struct cache_index_dir {struct cache* cache; } ;
struct cache {int /*<<< orphan*/  shared_cpu_map; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int PAGE_SIZE ; 
 int FUNC0 (char*,int,int /*<<< orphan*/ *) ; 
 struct cache_index_dir* FUNC1 (struct kobject*) ; 

__attribute__((used)) static ssize_t FUNC2(struct kobject *k, struct kobj_attribute *attr, char *buf)
{
	struct cache_index_dir *index;
	struct cache *cache;
	int len;
	int n = 0;

	index = FUNC1(k);
	cache = index->cache;
	len = PAGE_SIZE - 2;

	if (len > 1) {
		n = FUNC0(buf, len, &cache->shared_cpu_map);
		buf[n++] = '\n';
		buf[n] = '\0';
	}
	return n;
}