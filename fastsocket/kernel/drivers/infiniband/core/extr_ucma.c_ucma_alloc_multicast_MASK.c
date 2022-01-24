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
struct ucma_multicast {int /*<<< orphan*/  list; struct ucma_context* ctx; int /*<<< orphan*/  id; } ;
struct ucma_context {int /*<<< orphan*/  mc_list; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (int /*<<< orphan*/ *,struct ucma_multicast*,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ucma_multicast*) ; 
 struct ucma_multicast* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  multicast_idr ; 
 int /*<<< orphan*/  mut ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct ucma_multicast* FUNC7(struct ucma_context *ctx)
{
	struct ucma_multicast *mc;
	int ret;

	mc = FUNC3(sizeof(*mc), GFP_KERNEL);
	if (!mc)
		return NULL;

	do {
		ret = FUNC1(&multicast_idr, GFP_KERNEL);
		if (!ret)
			goto error;

		FUNC5(&mut);
		ret = FUNC0(&multicast_idr, mc, &mc->id);
		FUNC6(&mut);
	} while (ret == -EAGAIN);

	if (ret)
		goto error;

	mc->ctx = ctx;
	FUNC4(&mc->list, &ctx->mc_list);
	return mc;

error:
	FUNC2(mc);
	return NULL;
}