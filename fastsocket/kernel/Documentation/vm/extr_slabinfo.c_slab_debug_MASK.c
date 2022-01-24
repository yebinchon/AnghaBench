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
struct slabinfo {char* name; scalar_t__ trace; scalar_t__ store_user; scalar_t__ poison; scalar_t__ red_zone; scalar_t__ sanity_checks; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ poison ; 
 scalar_t__ redzone ; 
 scalar_t__ sanity ; 
 int /*<<< orphan*/  FUNC1 (struct slabinfo*,char*,int) ; 
 scalar_t__ FUNC2 (struct slabinfo*) ; 
 int slabs ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 scalar_t__ tracing ; 
 scalar_t__ tracking ; 

__attribute__((used)) static void FUNC4(struct slabinfo *s)
{
	if (FUNC3(s->name, "*") == 0)
		return;

	if (sanity && !s->sanity_checks) {
		FUNC1(s, "sanity", 1);
	}
	if (!sanity && s->sanity_checks) {
		if (FUNC2(s))
			FUNC1(s, "sanity", 0);
		else
			FUNC0(stderr, "%s not empty cannot disable sanity checks\n", s->name);
	}
	if (redzone && !s->red_zone) {
		if (FUNC2(s))
			FUNC1(s, "red_zone", 1);
		else
			FUNC0(stderr, "%s not empty cannot enable redzoning\n", s->name);
	}
	if (!redzone && s->red_zone) {
		if (FUNC2(s))
			FUNC1(s, "red_zone", 0);
		else
			FUNC0(stderr, "%s not empty cannot disable redzoning\n", s->name);
	}
	if (poison && !s->poison) {
		if (FUNC2(s))
			FUNC1(s, "poison", 1);
		else
			FUNC0(stderr, "%s not empty cannot enable poisoning\n", s->name);
	}
	if (!poison && s->poison) {
		if (FUNC2(s))
			FUNC1(s, "poison", 0);
		else
			FUNC0(stderr, "%s not empty cannot disable poisoning\n", s->name);
	}
	if (tracking && !s->store_user) {
		if (FUNC2(s))
			FUNC1(s, "store_user", 1);
		else
			FUNC0(stderr, "%s not empty cannot enable tracking\n", s->name);
	}
	if (!tracking && s->store_user) {
		if (FUNC2(s))
			FUNC1(s, "store_user", 0);
		else
			FUNC0(stderr, "%s not empty cannot disable tracking\n", s->name);
	}
	if (tracing && !s->trace) {
		if (slabs == 1)
			FUNC1(s, "trace", 1);
		else
			FUNC0(stderr, "%s can only enable trace for one slab at a time\n", s->name);
	}
	if (!tracing && s->trace)
		FUNC1(s, "trace", 1);
}