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
struct rtas_args {int token; int nargs; int nret; unsigned char* args; int /*<<< orphan*/ * rets; } ;
typedef  int /*<<< orphan*/  rtas_arg_t ;
struct TYPE_2__ {int /*<<< orphan*/  base; struct rtas_args args; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rtas_args*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 () ; 
 TYPE_1__ rtas ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 

__attribute__((used)) static void FUNC4(char c)
{
	struct rtas_args *args = &rtas.args;
	unsigned long s;

	if (!rtas.base)
		return;
	s = FUNC2();

	args->token = 10;
	args->nargs = 1;
	args->nret  = 1;
	args->rets  = (rtas_arg_t *)&(args->args[1]);
	args->args[0] = (unsigned char)c;

	FUNC1(FUNC0(args));

	FUNC3(s);
}