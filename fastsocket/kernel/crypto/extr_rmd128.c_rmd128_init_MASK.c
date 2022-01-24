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
struct rmd128_ctx {int /*<<< orphan*/  buffer; int /*<<< orphan*/ * state; scalar_t__ byte_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  RMD_H0 ; 
 int /*<<< orphan*/  RMD_H1 ; 
 int /*<<< orphan*/  RMD_H2 ; 
 int /*<<< orphan*/  RMD_H3 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct rmd128_ctx* FUNC1 (struct shash_desc*) ; 

__attribute__((used)) static int FUNC2(struct shash_desc *desc)
{
	struct rmd128_ctx *rctx = FUNC1(desc);

	rctx->byte_count = 0;

	rctx->state[0] = RMD_H0;
	rctx->state[1] = RMD_H1;
	rctx->state[2] = RMD_H2;
	rctx->state[3] = RMD_H3;

	FUNC0(rctx->buffer, 0, sizeof(rctx->buffer));

	return 0;
}