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
struct apei_exec_context {int entries; } ;

/* Variables and functions */
 int FUNC0 (struct apei_exec_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct apei_exec_context*) ; 
 int /*<<< orphan*/  FUNC2 (struct apei_exec_context*,struct apei_exec_context*,int) ; 
 int /*<<< orphan*/  pre_map_gar_callback ; 

int FUNC3(struct apei_exec_context *ctx)
{
	int rc, end;

	rc = FUNC0(ctx, pre_map_gar_callback,
				      NULL, &end);
	if (rc) {
		struct apei_exec_context ctx_unmap;
		FUNC2(&ctx_unmap, ctx, sizeof(*ctx));
		ctx_unmap.entries = end;
		FUNC1(&ctx_unmap);
	}

	return rc;
}