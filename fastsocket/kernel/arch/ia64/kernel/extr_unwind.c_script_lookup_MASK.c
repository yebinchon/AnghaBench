#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct unw_script {int hint; scalar_t__ coll_chain; } ;
struct unw_frame_info {int hint; unsigned long ip; unsigned long pr; size_t prev_script; } ;
struct TYPE_4__ {int /*<<< orphan*/  collision_chain_traversals; int /*<<< orphan*/  normal_hits; int /*<<< orphan*/  hinted_hits; int /*<<< orphan*/  lookups; } ;
struct TYPE_5__ {TYPE_1__ cache; } ;
struct TYPE_6__ {unsigned short* hash; TYPE_2__ stat; struct unw_script* cache; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned short UNW_CACHE_SIZE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ UNW_HASH_SIZE ; 
 scalar_t__ FUNC2 (struct unw_script*,unsigned long,unsigned long) ; 
 size_t FUNC3 (unsigned long) ; 
 TYPE_3__ unw ; 

__attribute__((used)) static inline struct unw_script *
FUNC4 (struct unw_frame_info *info)
{
	struct unw_script *script = unw.cache + info->hint;
	unsigned short index;
	unsigned long ip, pr;

	if (FUNC1(0))
		return NULL;	/* Always regenerate scripts in debug mode */

	FUNC0(++unw.stat.cache.lookups);

	ip = info->ip;
	pr = info->pr;

	if (FUNC2(script, ip, pr)) {
		FUNC0(++unw.stat.cache.hinted_hits);
		return script;
	}

	index = unw.hash[FUNC3(ip)];
	if (index >= UNW_CACHE_SIZE)
		return NULL;

	script = unw.cache + index;
	while (1) {
		if (FUNC2(script, ip, pr)) {
			/* update hint; no locking required as single-word writes are atomic */
			FUNC0(++unw.stat.cache.normal_hits);
			unw.cache[info->prev_script].hint = script - unw.cache;
			return script;
		}
		if (script->coll_chain >= UNW_HASH_SIZE)
			return NULL;
		script = unw.cache + script->coll_chain;
		FUNC0(++unw.stat.cache.collision_chain_traversals);
	}
}