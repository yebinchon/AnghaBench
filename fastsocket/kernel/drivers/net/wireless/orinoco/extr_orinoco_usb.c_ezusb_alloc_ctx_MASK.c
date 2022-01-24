#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_long ;
typedef  void* u16 ;
struct TYPE_2__ {scalar_t__ data; int /*<<< orphan*/  function; } ;
struct request_context {TYPE_1__ timer; int /*<<< orphan*/  done; int /*<<< orphan*/  refcount; void* in_rid; void* out_rid; int /*<<< orphan*/  state; struct ezusb_priv* upriv; struct request_context* buf; int /*<<< orphan*/  outurb; } ;
struct ezusb_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BULK_BUF_SIZE ; 
 int /*<<< orphan*/  EZUSB_CTX_START ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  ezusb_request_timerfn ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct request_context*) ; 
 struct request_context* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct request_context* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct request_context *FUNC7(struct ezusb_priv *upriv,
					       u16 out_rid, u16 in_rid)
{
	struct request_context *ctx;

	ctx = FUNC5(sizeof(*ctx), GFP_ATOMIC);
	if (!ctx)
		return NULL;

	ctx->buf = FUNC4(BULK_BUF_SIZE, GFP_ATOMIC);
	if (!ctx->buf) {
		FUNC3(ctx);
		return NULL;
	}
	ctx->outurb = FUNC6(0, GFP_ATOMIC);
	if (!ctx->outurb) {
		FUNC3(ctx->buf);
		FUNC3(ctx);
		return NULL;
	}

	ctx->upriv = upriv;
	ctx->state = EZUSB_CTX_START;
	ctx->out_rid = out_rid;
	ctx->in_rid = in_rid;

	FUNC0(&ctx->refcount, 1);
	FUNC1(&ctx->done);

	FUNC2(&ctx->timer);
	ctx->timer.function = ezusb_request_timerfn;
	ctx->timer.data = (u_long) ctx;
	return ctx;
}