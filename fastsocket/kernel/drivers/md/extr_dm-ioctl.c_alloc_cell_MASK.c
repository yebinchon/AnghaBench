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
struct mapped_device {int dummy; } ;
struct hash_cell {int /*<<< orphan*/ * new_map; struct mapped_device* md; int /*<<< orphan*/  uuid_list; int /*<<< orphan*/  name_list; struct hash_cell* name; int /*<<< orphan*/ * uuid; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct hash_cell*) ; 
 struct hash_cell* FUNC2 (int,int /*<<< orphan*/ ) ; 
 void* FUNC3 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct hash_cell *FUNC4(const char *name, const char *uuid,
				    struct mapped_device *md)
{
	struct hash_cell *hc;

	hc = FUNC2(sizeof(*hc), GFP_KERNEL);
	if (!hc)
		return NULL;

	hc->name = FUNC3(name, GFP_KERNEL);
	if (!hc->name) {
		FUNC1(hc);
		return NULL;
	}

	if (!uuid)
		hc->uuid = NULL;

	else {
		hc->uuid = FUNC3(uuid, GFP_KERNEL);
		if (!hc->uuid) {
			FUNC1(hc->name);
			FUNC1(hc);
			return NULL;
		}
	}

	FUNC0(&hc->name_list);
	FUNC0(&hc->uuid_list);
	hc->md = md;
	hc->new_map = NULL;
	return hc;
}