#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int start; TYPE_1__* ctx; } ;
typedef  TYPE_2__ atom_exec_context ;
struct TYPE_4__ {int data_block; scalar_t__ data_table; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(atom_exec_context *ctx, int *ptr, int arg)
{
	int idx = FUNC2(*ptr);
	(*ptr)++;
	FUNC0("   block: %d\n", idx);
	if (!idx)
		ctx->ctx->data_block = 0;
	else if (idx == 255)
		ctx->ctx->data_block = ctx->start;
	else
		ctx->ctx->data_block = FUNC1(ctx->ctx->data_table + 4 + 2 * idx);
	FUNC0("   base: 0x%04X\n", ctx->ctx->data_block);
}