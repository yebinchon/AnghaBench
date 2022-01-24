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
struct TYPE_5__ {int /*<<< orphan*/  fence; } ;
struct radeon_cs_parser {unsigned int nrelocs; unsigned int nchunks; TYPE_2__ const_ib; TYPE_1__* rdev; TYPE_2__ ib; TYPE_3__* chunks_array; TYPE_3__* chunks; TYPE_3__* relocs_ptr; TYPE_3__* relocs; TYPE_3__* track; int /*<<< orphan*/  validated; } ;
struct TYPE_6__ {struct TYPE_6__** kpage; struct TYPE_6__* kdata; scalar_t__ gobj; } ;
struct TYPE_4__ {int flags; } ;

/* Variables and functions */
 int RADEON_IS_AGP ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct radeon_cs_parser *parser, int error)
{
	unsigned i;

	if (!error) {
		FUNC4(&parser->validated,
					    parser->ib.fence);
	} else {
		FUNC3(&parser->validated);
	}

	if (parser->relocs != NULL) {
		for (i = 0; i < parser->nrelocs; i++) {
			if (parser->relocs[i].gobj)
				FUNC0(parser->relocs[i].gobj);
		}
	}
	FUNC1(parser->track);
	FUNC1(parser->relocs);
	FUNC1(parser->relocs_ptr);
	for (i = 0; i < parser->nchunks; i++) {
		FUNC1(parser->chunks[i].kdata);
		if ((parser->rdev->flags & RADEON_IS_AGP)) {
			FUNC1(parser->chunks[i].kpage[0]);
			FUNC1(parser->chunks[i].kpage[1]);
		}
	}
	FUNC1(parser->chunks);
	FUNC1(parser->chunks_array);
	FUNC2(parser->rdev, &parser->ib);
	FUNC2(parser->rdev, &parser->const_ib);
}