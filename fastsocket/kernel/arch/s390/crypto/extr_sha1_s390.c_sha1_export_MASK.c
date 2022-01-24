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
struct shash_desc {int dummy; } ;
struct sha1_state {int /*<<< orphan*/  buffer; int /*<<< orphan*/  state; int /*<<< orphan*/  count; } ;
struct s390_sha_ctx {int /*<<< orphan*/  buf; int /*<<< orphan*/  state; int /*<<< orphan*/  count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct s390_sha_ctx* FUNC1 (struct shash_desc*) ; 

__attribute__((used)) static int FUNC2(struct shash_desc *desc, void *out)
{
	struct s390_sha_ctx *sctx = FUNC1(desc);
	struct sha1_state *octx = out;

	octx->count = sctx->count;
	FUNC0(octx->state, sctx->state, sizeof(octx->state));
	FUNC0(octx->buffer, sctx->buf, sizeof(octx->buffer));
	return 0;
}