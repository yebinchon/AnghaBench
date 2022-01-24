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
struct ucma_file {int dummy; } ;
struct ucma_context {int /*<<< orphan*/  ref; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ucma_context*) ; 
 struct ucma_context* FUNC1 (int,struct ucma_file*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mut ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct ucma_context *FUNC5(struct ucma_file *file, int id)
{
	struct ucma_context *ctx;

	FUNC3(&mut);
	ctx = FUNC1(id, file);
	if (!FUNC0(ctx))
		FUNC2(&ctx->ref);
	FUNC4(&mut);
	return ctx;
}