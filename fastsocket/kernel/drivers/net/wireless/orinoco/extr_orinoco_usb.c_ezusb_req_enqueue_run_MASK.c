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
struct request_context {int /*<<< orphan*/  state; int /*<<< orphan*/  list; int /*<<< orphan*/  refcount; TYPE_1__* upriv; } ;
struct ezusb_priv {int /*<<< orphan*/  req_lock; int /*<<< orphan*/  req_pending; } ;
struct TYPE_2__ {int /*<<< orphan*/  udev; } ;

/* Variables and functions */
 int /*<<< orphan*/  EZUSB_CTX_QUEUED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ezusb_priv*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct ezusb_priv *upriv,
				  struct request_context *ctx)
{
	unsigned long flags;

	FUNC3(&upriv->req_lock, flags);

	if (!ctx->upriv->udev) {
		FUNC4(&upriv->req_lock, flags);
		goto done;
	}
	FUNC0(&ctx->refcount);
	FUNC2(&ctx->list, &upriv->req_pending);
	FUNC4(&upriv->req_lock, flags);

	ctx->state = EZUSB_CTX_QUEUED;
	FUNC1(upriv);

 done:
	return;
}