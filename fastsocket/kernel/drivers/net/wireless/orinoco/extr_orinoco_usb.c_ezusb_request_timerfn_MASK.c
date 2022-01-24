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
struct request_context {int killed; int /*<<< orphan*/  refcount; int /*<<< orphan*/  state; TYPE_1__* outurb; } ;
struct TYPE_2__ {int /*<<< orphan*/  transfer_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINPROGRESS ; 
 int /*<<< orphan*/  EZUSB_CTX_REQ_TIMEOUT ; 
 int /*<<< orphan*/  EZUSB_CTX_RESP_TIMEOUT ; 
 int /*<<< orphan*/  URB_ASYNC_UNLINK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct request_context*) ; 
 int /*<<< orphan*/  FUNC3 (struct request_context*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC5(u_long _ctx)
{
	struct request_context *ctx = (void *) _ctx;

	ctx->outurb->transfer_flags |= URB_ASYNC_UNLINK;
	if (FUNC4(ctx->outurb) == -EINPROGRESS) {
		ctx->state = EZUSB_CTX_REQ_TIMEOUT;
	} else {
		ctx->state = EZUSB_CTX_RESP_TIMEOUT;
		FUNC1("couldn't unlink");
		FUNC0(&ctx->refcount);
		ctx->killed = 1;
		FUNC2(ctx);
		FUNC3(ctx);
	}
}